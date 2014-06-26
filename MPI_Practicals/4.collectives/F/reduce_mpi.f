      program mpi_reduction
      implicit none
      include 'mpif.h'
      integer rank, input, result, ierror
      call MPI_Init(ierror)
      call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierror)
!      write (*,*) 'enter value'
!      read (*,*) input
      input=rank+1
! reduce the values of the different ranks in input to result of rank 0 with the operation sum (max, logical and)

! reduce the values of the different ranks in input to result of all ranks with the operation sum (max, logical and)

      if (rank.eq.0) then
         write (*,*) 'result', result
      end if
      call MPI_Finalize(ierror)
      end program mpi_reduction
