<html>
<head>

</head>
<body>
<a href="{{url('/create')}}"><button>Create</button></a>
<table border="1">
    <tr>
        <th>Name</th>
        <th>DOB</th>
        <th>Address</th>
        <th> Image</th>
    </tr>
    @foreach ($students as $student)
        <tr>
            <td>{{$student->name}}</td>
            <td>{{$student->dob}}</td>
            <td>{{$student->address}}</td>
            <td><img src="{{asset('storage/image/'.$student->image)}}"></td>
        </tr>
    @endforeach
</table>
</body>
</html>
