program mpi_send_receive

! Program that sends a number from one process to another
      
      implicit none
      include 'mpif.h'
      integer rank, size, number, stat, ierror
      
      call MPI_Init(ierror)

      call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierror)
      call MPI_Comm_size(MPI_COMM_WORLD, size, ierror)
      
      if (size.ne.2) then
         write (*,*) 'please run this with 2 processors'
         call MPI_Finalize(ierror)
         stop
      end if
      
      if (rank.eq.0) then
         write (*,*) 'enter number'
         read (*,*) number
      end if

!     send the contents of number from rank 0 to rank 1 using MPI_Send --- MPI_Recv
      
      if (rank.eq.1) then
         write (*,*) 'number communicated', number
      end if
      
      call MPI_Finalize(ierror)
      
end program mpi_send_receive
