Return-Path: <clang-built-linux+bncBDX5FLHOXQPRBG5ST75AKGQE26ANRCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 92292254A22
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 18:02:37 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id x125sf3021636pfc.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 09:02:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598544156; cv=pass;
        d=google.com; s=arc-20160816;
        b=JCFg92RqZQJ5zGHbFjlJkHiT00ysuCD6zxqqyXiwetoZ7R+cxV2UjZa0qdOTs95xna
         tyT0U6RkcvaB4/H0mP+g2MHstD4sW4naVyBdW0wbHTNlyUqcsY2lMkO2Dmjq0yZ9CAiM
         7aWQm7Lf2+TlGUaZ8qivHaxQxlkmfJVbtt/M3TzoJjGtqQEYaMxYbIoIa0fkRgXS0zEn
         KR0XBaG6V8L9t8xmp+46xCc2YkHAjmMgIL/eWIgQ4hm+o2/V4vybfBdNKC7aWWHuhZvL
         T8q7nuw0Zl6isvmgL+gWB/W+O3pIGiA9zXyiUBCSN9cLwCIhikaV8Ka72/5SsvglzDnZ
         PjpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:content-disposition
         :references:date:from:cc:to:subject:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=ZdzsvcEoELCeF/PGLv4vgiZP8rP0aK70lZGgX1+eHH4=;
        b=hBAUmEMh71f+dgV9/xQhxQZ8dyXyI+uj5/gniaUYBYG4v5BeDoS3uRp8qmOtaNYCJp
         ki2idOtqM4ZlU8vAXQ8FtfwiAixqH0blv475nTPEBa8d+hYUzqlpz79lr/Kw+g4ZaAPg
         f+Nm4NbSWx7iuixcoBi5b7DURGX5/B5SEHkkNn0A6QCMU/+atHy07oHdEm8Nv+FkpVn/
         z1G5JfiUb6dIZrUkmfjCHboVCpWs/qiMLUXwSZDZv9OMAMuU9kWWg2KCExdQCQbUT2uL
         XLq1Q4SAHFQk/OQKPDJrUDqbsMN8dWGUhUrvjjJMwS8SeBVHwGknabJmY7e4AaSB4YTR
         jynw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=QH4WGW3r;
       spf=pass (google.com: domain of ulrich.weigand@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=Ulrich.Weigand@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:subject:to:cc:from:date:references
         :content-disposition:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZdzsvcEoELCeF/PGLv4vgiZP8rP0aK70lZGgX1+eHH4=;
        b=suem+vmyu4l3+glbSaQ1Kh+ViKPCkLsGvRGndUfOY4Gf/5gOqmNz56fcS+4XMsCSTN
         Hhw6/vn7r8/bR8GJDBE7qJyt3LmgEKOflaUJOzfOPLk1wucUtRQCauZG36vhMbyuqnwR
         saZnCxBbLGgGOV9fsIOdSfew+oDVOKIqR44MJqZ4A1dBTWtCXYhC+zUsTwaUcFoyjFFG
         6ShQxn5r2jAaVKsdIx2/VEdkBtead3g7BC0RQqqPWnyTNW3tzr97+oOQdHZeN8ON+Ue0
         xeWgwVLl8J1juDhAmgEwrDiUjUPhbg39AnU7oaCxsxVpPMMCcoPCNhqwqfC8QZ7qfcuU
         8F+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:subject:to:cc
         :from:date:references:content-disposition:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZdzsvcEoELCeF/PGLv4vgiZP8rP0aK70lZGgX1+eHH4=;
        b=fEpGEv9crBBGAafaH5d3iCdV1lz4NjtGWSP7eK6dcvIdh+W5NJyWRsndgL6OH54iWy
         HRKMh6gW6nUC8TJAf1y9mjrvuBN6UX+Viw7IxsdfFav+2VstBEIHZ0Aj3RAnvj1eSsEh
         Vfs7npeIKrft/6ZR4qIBFBkLTVmu1dV+b78fCIJfpAzQZRj9m5Vh65EblMx7Z/AIurRT
         fPyUe+ror5kQgFoDfe9Zrc7rQ2daNLUCPA8bBHDQkds+uhTuywry/8wfVvp0hzu+/gF4
         HM9ylcdd2Rl94dxq9NIEYbKytKDL54L3MTXaFPMTiZYGDLkrGj7JFH3uRk3r+M5DWQDr
         yM4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kycIhgXwgWzqxuFFb+38rbcQUbuUvlPdP4PvIdeKl+YBPNH/5
	e9ZIf6cpyKlUBEgVhLEemGA=
X-Google-Smtp-Source: ABdhPJxWX5EoBKV5/9VlsuHBz5PNAV9HrU6VbEEFt2SSYowDDVtGUWAFOdTmV4g6rhgxsP1pzj7kmA==
X-Received: by 2002:a65:6287:: with SMTP id f7mr5995651pgv.264.1598544156153;
        Thu, 27 Aug 2020 09:02:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:82c5:: with SMTP id u5ls1448635plz.2.gmail; Thu, 27
 Aug 2020 09:02:35 -0700 (PDT)
X-Received: by 2002:a17:90a:a081:: with SMTP id r1mr11695357pjp.159.1598544155427;
        Thu, 27 Aug 2020 09:02:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598544155; cv=none;
        d=google.com; s=arc-20160816;
        b=Ah6qY7HgCp+NfbmrFSAnHBSUSL0Eb/yS+JAAIXf4B1/KNflNzYBhP/ggIUvVnwUXZl
         puQdxnt4pkDl7Cnn0TSxCoxU6Xl5r7XF5LEIwh5NHLzQZV1qCVRH2RTO2DS8C01C9jUd
         m+kVVsK8mai2eecX2sf/v6Zd/f818U6q4cGAmwe6cZs7/gkjR/6YfsskDYWu9QftsFiY
         Q4MYPXJhSpKa7+V0298Em8qeID5YVpv/cpDDXAToKsl/Fgh5a8NXOqtW2lxjz9ONOKwO
         dG/NHZAjve6gcy3dGlcamTA36JyKiInZrEns2m9OcGK74eFkk/Nx/KVxyZ8vX6a8FLVg
         34Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:content-disposition:references:date:from:cc:to:subject
         :in-reply-to:mime-version:dkim-signature;
        bh=NO/z00TElWoQZ0+u+OE2bYxNOTz/rT0CWGSkeXGPdbI=;
        b=D9J59UFFCdEqXHSeLCMNLNvQ6UWPHRSRPGfAgPlHvrRP/Oos+xnwU/MHWtBW+n+dZ2
         idAmmLgZVHlZ1krjCF5k30BzBc5Pe2ktzdMASzUlCbLMq2/GucWH1rdDM7CrSz/LJVKq
         gs519KgScb42MEoT+UNp5EOsRabCzlMkxPI4fnkgroXREyky5ocdLlr182QKJncw4dLT
         C9CUtShfzSMs06/iKK5elx6lghxlEdAU6XQSmAZeAEweWchP5L8y+yfcD7bS8XpSzaTL
         HwizEzElRAW18OhqbxifkF3qd01H2UcoeGTQnGYTzaqHS5ufJZ8owRVI0k+Yjy6kFcJE
         rn2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=QH4WGW3r;
       spf=pass (google.com: domain of ulrich.weigand@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=Ulrich.Weigand@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id o185si180082pfg.4.2020.08.27.09.02.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 09:02:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.weigand@de.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 07RFXUJw132425
	for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 12:02:35 -0400
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com [192.155.248.74])
	by mx0a-001b2d01.pphosted.com with ESMTP id 336ff0sbmq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 12:02:34 -0400
Received: from localhost
	by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
	for <clang-built-linux@googlegroups.com> from <Ulrich.Weigand@de.ibm.com>;
	Thu, 27 Aug 2020 16:02:34 -0000
Received: from us1a3-smtp07.a3.dal06.isc4sb.com (10.146.103.14)
	by smtp.notes.na.collabserv.com (10.106.227.92) with smtp.notes.na.collabserv.com ESMTP;
	Thu, 27 Aug 2020 16:02:32 -0000
Received: from us1a3-mail201.a3.dal06.isc4sb.com ([10.146.77.216])
          by us1a3-smtp07.a3.dal06.isc4sb.com
          with ESMTP id 2020082716023158-593073 ;
          Thu, 27 Aug 2020 16:02:31 +0000
MIME-Version: 1.0
In-Reply-To: <CAKwvOdn_iBYsFEgTkoMOnAbJPyvzbi-OQVu6TJ_pJzXrg4w7pw@mail.gmail.com>
Subject: Re: [linuxppc:next-test 70/80] /usr/bin/powerpc64-linux-gnu-ld: warning:
 discarding dynamic section .rela.opd
To: Nick Desaulniers <ndesaulniers@google.com>,
        "Alan Modra" <amodra@gmail.com>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>,
        clang-built-linux
 <clang-built-linux@googlegroups.com>,
        kbuild-all@lists.01.org, Kees Cook
 <keescook@chromium.org>,
        kernel test robot <lkp@intel.com>,
        Michael Ellerman
 <mpe@ellerman.id.au>,
        Nick Desaulniers <nick.desaulniers@gmail.com>
From: "Ulrich Weigand" <Ulrich.Weigand@de.ibm.com>
Date: Thu, 27 Aug 2020 18:02:14 +0200
References: <202008270909.Z8PiAoi5%lkp@intel.com>
 <649d9ca6-807e-dff8-a266-564938b8ab2b@csgroup.eu>
 <CAKwvOdn_iBYsFEgTkoMOnAbJPyvzbi-OQVu6TJ_pJzXrg4w7pw@mail.gmail.com>
X-KeepSent: D4907D71:6D0B268E-C12585D1:00576811;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP7 Octobe4, 2013
X-LLNOutbound: False
X-Disclaimed: 5179
X-TNEFEvaluated: 1
Content-type: multipart/alternative; 
	Boundary="0__=4EBB0F42DFC4EE818f9e8a93df938690918c4EBB0F42DFC4EE81"
Content-Disposition: inline
x-cbid: 20082716-3165-0000-0000-0000043D5F29
X-IBM-SpamModules-Scores: BY=0; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.417846; ST=0; TS=0; UL=0; ISC=; MB=0.000006
X-IBM-SpamModules-Versions: BY=3.00013727; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000295; SDB=6.01426172; UDB=6.00765533; IPR=6.01208900;
 MB=3.00033734; MTD=3.00000008; XFM=3.00000015; UTC=2020-08-27 16:02:34
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2020-08-27 15:32:04 - 6.00011771
x-cbparentid: 20082716-3166-0000-0000-00001B1D6238
Message-Id: <OFD4907D71.6D0B268E-ONC12585D1.00576811-C12585D1.00581868@notes.na.collabserv.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-08-27_08:2020-08-27,2020-08-27 signatures=0
X-Proofpoint-Spam-Reason: orgsafe
X-Original-Sender: ulrich.weigand@de.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=QH4WGW3r;       spf=pass (google.com:
 domain of ulrich.weigand@de.ibm.com designates 148.163.156.1 as permitted
 sender) smtp.mailfrom=Ulrich.Weigand@de.ibm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=ibm.com
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


--0__=4EBB0F42DFC4EE818f9e8a93df938690918c4EBB0F42DFC4EE81
Content-type: text/plain; charset="UTF-8"

Nick Desaulniers <ndesaulniers@google.com> wrote on 27.08.2020 14:52:36:

> > > All warnings (new ones prefixed by >>):
> > >
> > >>> /usr/bin/powerpc64-linux-gnu-ld: warning: discarding dynamic
> section .rela.opd
> > >
> >
> > We have /DISCARD/ *(.rela*) in the VDSO linker scripts.
> >
> > What is going on here with clang ?
>
> Looks like .rela.opd was maybe synthesized.  cc Dr. Weigand, whos name
> shows up on llvm/test/MC/PowerPC/ppc64-relocs-01.s, which is the only
> hit I get in the codebase of `opd` (at least for tests, still looking
> to see if ".opd" gets appended somewhere.

Well, this is the old ELFv1 ABI for big-endian PowerPC, which uses
function descriptors, which reside in the .opd section.  These are
emitted by LLVM in the PPCLinuxAsmPrinter::emitFunctionEntryLabel
section, and they usually do require relocations since the function
descriptor contains the address of the function text (however those
relocations should be resolved during final link).  I don't think
there should be much difference between GCC and LLVM in how those
are handled.

Alan Modra is really the expert on PowerPC linker issues, so I've
added him on CC in case he has further comments.

Bye,
Ulrich

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/OFD4907D71.6D0B268E-ONC12585D1.00576811-C12585D1.00581868%40notes.na.collabserv.com.

--0__=4EBB0F42DFC4EE818f9e8a93df938690918c4EBB0F42DFC4EE81
Content-Transfer-Encoding: quoted-printable
Content-type: text/html; charset="UTF-8"
Content-Disposition: inline

<html><body><p><tt><font size=3D"2">Nick Desaulniers &lt;ndesaulniers@googl=
e.com&gt; wrote on 27.08.2020 14:52:36:<br><br>&gt; &gt; &gt; All warnings =
(new ones prefixed by &gt;&gt;):<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;&gt;&gt=
; /usr/bin/powerpc64-linux-gnu-ld: warning: discarding dynamic <br>&gt; sec=
tion .rela.opd<br>&gt; &gt; &gt;<br>&gt; &gt;<br>&gt; &gt; We have /DISCARD=
/ *(.rela*) in the VDSO linker scripts.<br>&gt; &gt;<br>&gt; &gt; What is g=
oing on here with clang ?<br>&gt; <br>&gt; Looks like .rela.opd was maybe s=
ynthesized. &nbsp;cc Dr. Weigand, whos name<br>&gt; shows up on llvm/test/M=
C/PowerPC/ppc64-relocs-01.s, which is the only<br>&gt; hit I get in the cod=
ebase of `opd` (at least for tests, still looking<br>&gt; to see if &quot;.=
opd&quot; gets appended somewhere.<br></font></tt><br><tt><font size=3D"2">=
Well, this is the old ELFv1 ABI for big-endian PowerPC, which uses</font></=
tt><br><tt><font size=3D"2">function descriptors, which reside in the .opd =
section. &nbsp;These are</font></tt><br><tt><font size=3D"2">emitted by LLV=
M in the </font></tt><tt><font size=3D"2">PPCLinuxAsmPrinter::emitFunctionE=
ntryLabel</font></tt><br><tt><font size=3D"2">section, and they usually do =
require relocations since the function</font></tt><br><tt><font size=3D"2">=
descriptor contains the address of the function text (however those</font><=
/tt><br><tt><font size=3D"2">relocations should be resolved during final li=
nk). &nbsp;I don't think</font></tt><br><tt><font size=3D"2">there should b=
e much difference between GCC and LLVM in how those</font></tt><br><tt><fon=
t size=3D"2">are handled.</font></tt><br><br><tt><font size=3D"2">Alan Modr=
a is really the expert on PowerPC linker issues, so I've</font></tt><br><tt=
><font size=3D"2">added him on CC in case he has further comments.</font></=
tt><br><br><tt><font size=3D"2">Bye,</font></tt><br><tt><font size=3D"2">Ul=
rich</font></tt><br><BR>
</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/OFD4907D71.6D0B268E-ONC12585D1.00576811-C12585=
D1.00581868%40notes.na.collabserv.com?utm_medium=3Demail&utm_source=3Dfoote=
r">https://groups.google.com/d/msgid/clang-built-linux/OFD4907D71.6D0B268E-=
ONC12585D1.00576811-C12585D1.00581868%40notes.na.collabserv.com</a>.<br />

--0__=4EBB0F42DFC4EE818f9e8a93df938690918c4EBB0F42DFC4EE81--

