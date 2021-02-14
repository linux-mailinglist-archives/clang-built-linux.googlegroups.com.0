Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGHEU2AQMGQEMPLW3AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCDA31B35C
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 00:28:26 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id a13sf4047092qvv.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 14 Feb 2021 15:28:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613345305; cv=pass;
        d=google.com; s=arc-20160816;
        b=hMJef3ssErcSXsjB9WiwCwMsSL5j5f1aA6JNjiapu2z/67JZZzAcLqfgZyQM+lVYRm
         cdk40Ar6xWu9rHHxChesHzio/KoQZvoPconBqC3/dhk1mdM92yZq5DGdtXV2+SJ4fY2F
         CEKruWN6ZS/IO73ZXihQpO7E9e2f4Pfk6OjtVDQvfYJwsdlg6U/0KtvemYLcGcD/DT4A
         BX8DqbmteBWF0WwmZpx3/KXdhY7YBekkHDXthMlcimkvmf2ZZ1o2uKVbwh/N1pSKvVoM
         oNk5kbEpivpWV2PsbCPUf1tyEFaYm2c3O6HDH01Y0KbkMjpeyXMeWvLVrz52hbbWucZ2
         /M0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ow7dSWDOXLIUEHBFtRBCnQPwUGx3xjwYyW/8HsL7hG8=;
        b=rOLVXDwinBfGxKMARcwbBMMUcLK7JoKZNRiQwPII0cNrSMml8qgxYI01GMKsqjWod6
         AV0ATQXAjyYGMUcoZiAxcdjvVBsxESXYc1Q2fA8ewh232DqWPFMlSI2/hiwVRB6dUbPw
         XWr3DFz8ZJYj6HhJcaSbEiwP1qomAe0p083t9XIYrs3hteh+Cg06FH7M1vS2fO0Nicx9
         EG0Oa0cyy4dAohrWU7E7OZyzFvAk4ln9TDy1dEVWwQE4m0viJ6T2pE4LecXsz5rPUFhE
         AXGwU4UjQeDrHzKtaNjp4amSbbWx5Bm1ISt0kI6uGLR7THuk2DTlLqMUNidysuRr7EPR
         ftHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tIeP07i7;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ow7dSWDOXLIUEHBFtRBCnQPwUGx3xjwYyW/8HsL7hG8=;
        b=kb9H0rdimnVwc6Eeig0+sjElagoD9qNKwCMO/54yHJJNhJ9ocjIZckaMKBCAbS4tr8
         t9qN6nONsdQraoK/2VvzbkSpHZdggq3eO+bTXOrlh5GJs2Gz7B+mUiwQPUubBuW7/gA0
         smPSnFA/b2BtQMzP1P3sgnmwarVT0hLO0sV+meehrCvCVMflAgD/oWFtFIJxmcn4G8Ri
         zOoaCWq1/fCV6wK6ih7z8e29ubTRel7DxHrb6Nx7CllB+zZUxpbCqYQp+nZLnTf45wqD
         Can3KeIrsljfZX1wj2Pk75ABZPQnZC/LMBx71rgeygBMDFbEypuwZJMxMAR3MJlryQsw
         OUVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ow7dSWDOXLIUEHBFtRBCnQPwUGx3xjwYyW/8HsL7hG8=;
        b=Fri5EBSkWvQkdLszDmH5zzjs5nQhkpmHgHDb5seVznYxKJCOpYUOLRWmo61OvXCSef
         R6vB2DMoDK1MVDR1ZdMdwdwSCn0JjI7LOA3hkJH8cPMc0AItdWcQtJ+WtHIQSeIFe4wR
         XnGVQQkXCgPfj9JaYkVI8ELtd1Jjz8vEdrGtbTEp97NyuExv9pL4yWaQZo/SpQlxpKEd
         3reFYzmcJa80freMBiwbzQ2HT2flVCEbVz4rtcfEa40g5DoM09H6W3tAQrpP3suTqrJQ
         i6jVj/HgyyA0PYU+z9iJ2Uu0MiE2H1raz+iFtqkFIO6RM5dn9M7S7Mm+grek4vf8xots
         npww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RTaGaxantJdja4teYTDtISdNhaq0J709XCWXiT1hVE0kX2CXS
	bJmGHKSSoii4ptZR4pQrZFY=
X-Google-Smtp-Source: ABdhPJxIUmMHyRrVi43wql6aiOH/G8BzPcJHuKE87kXDLsLw3WE27wDjFj1slYYbfXRoSfjj/0/BSA==
X-Received: by 2002:a37:628e:: with SMTP id w136mr12637366qkb.46.1613345305017;
        Sun, 14 Feb 2021 15:28:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:d2:: with SMTP id p18ls2279180qtw.3.gmail; Sun, 14
 Feb 2021 15:28:23 -0800 (PST)
X-Received: by 2002:ac8:7456:: with SMTP id h22mr12121917qtr.297.1613345303228;
        Sun, 14 Feb 2021 15:28:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613345303; cv=none;
        d=google.com; s=arc-20160816;
        b=lNEQ8+CFk84i8EYJJF5P+dn1KuipcqqUpDVS0oZaqsYweSPtSJr92JLTqo/XfPWTwi
         gCQGVc/NnhRGaZ6Rd2SpUr+vTPwF4oqfb/yIq5bhrnsjGF1K7QJwWYt7OB52jTllfHPs
         hx/2NtTdC0OC3WYiGt31NJf/U3dwQ/B+IaltiwR5opnWCBdHf0wCGWdhgr2FFwWVUfFB
         5BRgRpJuddbSUrsUAOLoO3QkVBKojB+7Xj33/nqsoqDbjbEBZuF7SCu4RA67N6hlJTFA
         zf79Y5KXiXA6lqkDR6KO1g0gpgAUuYAz0fRKAsOPkU+xWUah9QZwb3gZspg92EaaKUmQ
         ZR/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=MrosePd/d9eS9S0mxIts7Hc+krAj9l2Mt8gMZ0F52B4=;
        b=xQ3Pg0ggSnh9NUkrKc2/tLaS6d8YhWpDpRO3966r77HEv4ykK64WBQU0WvBa1zvhm3
         LS5dFibvudgtfpf0SmnwpYY9/5s52iAq+yDj8JTQSvTmRwnvx0gcIsGslunlugQxS2l2
         gDPIFh7ZpFd2QEDJgXv4vlxUGPpMsA2u8ZVJXE0FJHPWIn4FprZNz1UV4NuvvDdpcbnk
         3zpNhzVdYSimY4MqVqseYedfei3FtRK8hmbC8jYATszWYU+UX2OvdKjF+Pcg4LwcCm+x
         KR6d28+PQUuTheBkEKMDSJfqTUMlodMbQ2zTPa/n+kfkj4nSrR7Vkq+aPfIiLg4NpOjL
         Z0Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tIeP07i7;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j10si534424qko.3.2021.02.14.15.28.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2021 15:28:23 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DEE6364DEA;
	Sun, 14 Feb 2021 23:28:21 +0000 (UTC)
Date: Sun, 14 Feb 2021 16:28:20 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Stephen Zhang <stephenzhangzsd@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Tom Roeder <tmroeder@google.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Subject: Re: [PATCH v1] clang_tools:gen_compile_commands: Change the default
 source directory
Message-ID: <20210214232820.GA55343@24bbad8f3778>
References: <20210208195439.GA1097868@ubuntu-m3-large-x86>
 <CALuz2=d-ENRbWgGYaO_ESEaw5eOVSwkQmkeYBJ-w0Vb3zZ+REg@mail.gmail.com>
 <20210209192729.GA820978@ubuntu-m3-large-x86>
 <CALuz2=dyA_ki98t8VNe2L1UcBXrSoJT1r6j1puEmLn7WrX87XQ@mail.gmail.com>
 <20210210182400.GA3502674@ubuntu-m3-large-x86>
 <CALuz2=eSv2N2Qp7GimLgdWjvWDwDh1Dj0Q7Czm4Br5a50rs4ew@mail.gmail.com>
 <CAK7LNAT+CG9zqPpYLoy9_1eA4caZWzxyQACcOrhbg9zfArEwPQ@mail.gmail.com>
 <CALuz2=ck_=M6Dd8oFgWxnRGdipWOsdL2KODZQSmodh2N7Z8T-w@mail.gmail.com>
 <CAK7LNAR06H3Ue5SG3=6u1veyjg+kXXb2isEBsHVQEtMMJ3d2Tw@mail.gmail.com>
 <CALuz2=fHXZ=NrVdRNzyromD88wp9pAzYC9nffPt6y5YM=sJniw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CALuz2=fHXZ=NrVdRNzyromD88wp9pAzYC9nffPt6y5YM=sJniw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=tIeP07i7;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Sun, Feb 14, 2021 at 07:49:22PM +0800, Stephen Zhang wrote:
> Masahiro Yamada <masahiroy@kernel.org> =E4=BA=8E2021=E5=B9=B42=E6=9C=8813=
=E6=97=A5=E5=91=A8=E5=85=AD =E4=B8=8B=E5=8D=888:46=E5=86=99=E9=81=93=EF=BC=
=9A
> > This is the steps I tested.
> >
> >
> > masahiro@oscar:~/ref/linux$ make O=3Dbuild  defconfig all -j24
> >   [ snip ]
> > masahiro@oscar:~/ref/linux$
> > ./scripts/clang-tools/gen_compile_commands.py  -d build
> > masahiro@oscar:~/ref/linux$ grep '"file":' compile_commands.json |
> > grep scripts/ | head -n5
> >     "file": "/home/masahiro/ref/linux/scripts/mod/empty.c"
> >     "file": "/home/masahiro/ref/linux/scripts/mod/sumversion.c"
> >     "file": "/home/masahiro/ref/linux/scripts/mod/file2alias.c"
> >     "file": "/home/masahiro/ref/linux/scripts/mod/modpost.c"
> >     "file": "/home/masahiro/ref/linux/build/scripts/kconfig/parser.tab.=
c"
> >
> > --
> > Best Regards
> > Masahiro Yamada
>=20
> Thanks. Nathan had a detailed description about  this:
>=20
> > $ make O=3Dbuild
> >
> > will work with '-d .' because the .cmd files are in '.' and the source
> > files will be placed relative to '.', which is correct. Your command
> > does not work for two reasons:
> >
> > 1. You are using a build directory that is not a subpath of the source
> > directory. In other words, this script would not work for
> >
> > $ make O=3D/tmp/build
> >
> > because '-d /tmp/build' needs to be used to find the .cmd files but the=
n
> > the relative path of the source files is messed up, as you point out.
>=20
> This may help you reproduce the problem. So you shoud try:
>=20
> >masahiro@oscar:~/ref/linux$ make O=3D/tmp/build  defconfig all -j24
>=20
> where the build directory  is not a subpath of the source directory.
>=20

This will actually work for the regular build system as it uses the full
path to the files when O=3D is outside of the source tree. My comment
applies only to the tools/ build system, which Masahiro has explicitly
said he does not want this script to support.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210214232820.GA55343%4024bbad8f3778.
