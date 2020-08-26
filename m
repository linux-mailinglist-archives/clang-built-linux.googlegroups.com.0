Return-Path: <clang-built-linux+bncBDX5FLHOXQPRBQMOTL5AKGQEMX33GQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DB825343C
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 18:01:06 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id n128sf2057286qke.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 09:01:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598457665; cv=pass;
        d=google.com; s=arc-20160816;
        b=c4aNc4L+74TBbFG4hdjOwU3rU3vbnpbAChIJ7D9Y+QzNGMl3Q3ye7vJvPFnD9xUZHX
         +iTGR1w0o9X/zvXbx1ydrPx5DqP7GHGlrwmhDy+cofVmYPOv+l89bktarK7ztaevfYkZ
         e7EIFXwsqbOK4dxjMG/zTrCEJIV9R3m0OLIHezY0Q3zrk5gbqz6Edrj0yJepGQa15HVC
         LN5FA9ZD8g4NJ/DtCf49BfUcpicT47IebzT/EY1EfwTkXBcfvkkJdUYkQiWV+KTkVLAy
         s0vXF1sv9hdcc9nXjuJbVV/VcUIh7HvZ/YmBdza3TgHVE8mFWwfOKdr7HUpJuRCtzFwv
         6Tzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:content-disposition
         :references:date:from:cc:to:subject:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=jY37qVs+jibq2ddRu8WNz4RwTs9Zm2c8iuzS8xqBML8=;
        b=tka7vzzji1DB3qDLoNxXZktq+B4dtj35H/hEpeY+l1QNYApq5BqtvWxCRsie5nmUK2
         7xfet3oIzSfWMnSu5E6F/KZxfUBHD4BC0WZ27XNHSPHQ7L1+iBKjeKcRc93J61sIlGao
         E6Ks42lYtNsBIgiSEYsp2K21tPzCzEKNm7T/JqPfNm+45iitBACwZ+nEqd5t+miVgAqz
         GDOFUWq88RjA6nx6pVtk9HWwesrdGORZfWw3dlpr5zTc1LnLAmT1tP3LJfcIMuQ0ZauN
         om7D6PPe6wZIsXCST54qR/fRFAr7EUF/GQu3CHADOP5FOrlCWaBGMmsnevxAtICyxoMk
         AKzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=C2srGkeC;
       spf=pass (google.com: domain of ulrich.weigand@de.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=Ulrich.Weigand@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:subject:to:cc:from:date:references
         :content-disposition:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jY37qVs+jibq2ddRu8WNz4RwTs9Zm2c8iuzS8xqBML8=;
        b=VCYLoIYuXgaq8at0Jc/CDeI6xfT9z0ROwQZzeDNtHq996GkooMuyOB6vS6Js5Vp4n0
         I/oaU+tYsQjTZyrRpMq5Yml+iHVwsyozWYogAgyiGFhbcuPgyZpNJkF6yDH3tXlvvV0L
         i1KdL3vHmqL6wDdxOC5YR/uoZVmNfVwQZVOFStCTzR1UKmLtoCJ0vWE9mWyZIJEctyMy
         BzlHE3aT5lyWA2+R+BgEibERYrsk7M3LSeMXE45YZ3RD9wxaIyrMpvE+cQQ0e9yrX3eo
         hcatHxXsMORIBuT33ZywulDPc520Z9cdqiPmae3AT0EqeLXWxCe1dJHW7f8zoxBWOati
         ZSew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:subject:to:cc
         :from:date:references:content-disposition:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jY37qVs+jibq2ddRu8WNz4RwTs9Zm2c8iuzS8xqBML8=;
        b=TCWl23lQBiSFRJNkP8tIFgqSOrYIyvIZM2MYg//BYAxQOi/rv3MbAl9NuM+hxe+2wl
         REANTGlp12k55K5LtB2xtuRx8CgPLuIpTt1VaD68alcq9w4O2SNvab+XzhixaZc2muRU
         YiOgdSPdzluhT8AX1nI+h5oQzGmmCbJjXlKNuG+hwzILQ4/vOPgrS02teUWDRrf0TShI
         Xau7UxG2CVEsl/XoRHiMT6BFbFEuACmDNScN7at3jaHEHmGPzRILhKyiecQoZmgaOYbd
         CA+QhXLDOw8v/TGpNOBRGT7b9Wy9HJzUgr2oPAfzWfQjlvHhJHRjoUsRIewOESzR3yAA
         x7Pw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sJKAcjyPbdqEY3qOq+iwSKzvXrXyA8b5aN7vXb0kzxubaYi0E
	VTV9p9iKyDdh9hGoTr47+jU=
X-Google-Smtp-Source: ABdhPJzAFvr8tOHQctiU+15cUiFD2exo5dXkqXWnIHu5RZ7TbV/INFaSQN4R8mBiGl6NzMabXhoq7w==
X-Received: by 2002:ad4:462f:: with SMTP id x15mr14600614qvv.180.1598457665734;
        Wed, 26 Aug 2020 09:01:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:c20d:: with SMTP id j13ls1268254qkg.2.gmail; Wed, 26 Aug
 2020 09:01:05 -0700 (PDT)
X-Received: by 2002:a05:620a:1243:: with SMTP id a3mr14417051qkl.423.1598457665248;
        Wed, 26 Aug 2020 09:01:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598457665; cv=none;
        d=google.com; s=arc-20160816;
        b=Y9gxgPmOiP1vgDIH94/JjVm35VBYkWirNtuOfRFCOJHXttAQqwrIir71lK5Od0fhsr
         4xxD+2qYNBQHpuj79mfgI6sdfN+ckzbty5HPAfMKPviy73eFTpfTzAPkaqJeVt5/VFi/
         Do3ub3M+y0kCR6bhcmYet2HGqayKgxPvVw4upi1aHOtFkmUd4Y/0Vcr3+3zCezcJsbPK
         BaFyvDHFSa7oDESWJAP3W/UjT0W4AZSNpmWYDsYonp6a6DykDS5LtWT5VmEh8AphWepa
         6ij4jKrt3tUYlhK5X1mlpum2F9w5Y2BUs/x8pMaiNiJBarxN9LQC7VSZyqIS1L3Z7zZM
         tX3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:content-disposition:references:date:from:cc:to:subject
         :in-reply-to:mime-version:dkim-signature;
        bh=8UzJgdIPL5sPN2NWPyDFBTbsohypOXfMzvT8FOj+gWk=;
        b=eoPTKVUlwPkhvbGhTE/pZ8yc15GOpUXBjGGzHihnALZXENodKyMDwExw/9XPGyOdwl
         Yhf6MD5P+4tSa1Pu0Nlb83Op3HoZqc+ER0IUBP6T1X+uge22i3f7AEnfN95X+45osKM5
         VzWWscv4hJVi9QhGkFcwCh9vcM5/TKF2c/oRTEI04QIZc7Xs7dG/Ad+z1fJ8H87g6/sZ
         /axcMRd/BCCqNuN9FkmPQBj8MZMevpmbt65X/nbcOoGAAeR7luxbLPpxtcebcZShzwtW
         wp5hMUEJr/+jK3D0y7kUKomfxVG19YEHzke3VpK3Ps88JBOtn0+MZtCbGR/utk5NfEc6
         eg6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=C2srGkeC;
       spf=pass (google.com: domain of ulrich.weigand@de.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=Ulrich.Weigand@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id i9si162347qkg.0.2020.08.26.09.01.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Aug 2020 09:01:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.weigand@de.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0127361.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 07QFXfj3007751
	for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 12:01:04 -0400
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com [192.155.248.82])
	by mx0a-001b2d01.pphosted.com with ESMTP id 335sg02fv5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 12:01:04 -0400
Received: from localhost
	by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
	for <clang-built-linux@googlegroups.com> from <Ulrich.Weigand@de.ibm.com>;
	Wed, 26 Aug 2020 16:01:03 -0000
Received: from us1a3-smtp04.a3.dal06.isc4sb.com (10.106.154.237)
	by smtp.notes.na.collabserv.com (10.106.227.105) with smtp.notes.na.collabserv.com ESMTP;
	Wed, 26 Aug 2020 16:01:02 -0000
Received: from us1a3-mail201.a3.dal06.isc4sb.com ([10.146.77.216])
          by us1a3-smtp04.a3.dal06.isc4sb.com
          with ESMTP id 2020082616010106-606475 ;
          Wed, 26 Aug 2020 16:01:01 +0000
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmZSf2zKaqO3ivorYd9D+yALo5-6hctsSuaK6h2Ywwedw@mail.gmail.com>
Subject: Re: arch/s390/include/asm/atomic_ops.h:56:45: error: invalid operand for
 inline asm constraint 'i'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
        Vasily Gorbik
 <gor@linux.ibm.com>,
        Heiko Carstens
 <hca@linux.ibm.com>, kbuild-all@lists.01.org,
        LKML
 <linux-kernel@vger.kernel.org>
From: "Ulrich Weigand" <Ulrich.Weigand@de.ibm.com>
Date: Wed, 26 Aug 2020 18:00:44 +0200
References: <202008201500.aOkzA3ZM%lkp@intel.com>
 <CAKwvOdmZSf2zKaqO3ivorYd9D+yALo5-6hctsSuaK6h2Ywwedw@mail.gmail.com>
X-KeepSent: B8976F11:85FB0DED-C12585D0:0057C857;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP7 Octobe4, 2013
X-LLNOutbound: False
X-Disclaimed: 47439
X-TNEFEvaluated: 1
Content-type: multipart/alternative; 
	Boundary="0__=4EBB0F43DFC44EC78f9e8a93df938690918c4EBB0F43DFC44EC7"
Content-Disposition: inline
x-cbid: 20082616-9463-0000-0000-000003F764F2
X-IBM-SpamModules-Scores: BY=0; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.417846; ST=0; TS=0; UL=0; ISC=; MB=0.000406
X-IBM-SpamModules-Versions: BY=3.00013721; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000295; SDB=6.01425695; UDB=6.00765249; IPR=6.01208423;
 MB=3.00033714; MTD=3.00000008; XFM=3.00000015; UTC=2020-08-26 16:01:03
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2020-08-26 15:34:12 - 6.00011767
x-cbparentid: 20082616-9464-0000-0000-00005E7C67E5
Message-Id: <OFB8976F11.85FB0DED-ONC12585D0.0057C857-C12585D0.0057F54C@notes.na.collabserv.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-08-26_09:2020-08-26,2020-08-26 signatures=0
X-Proofpoint-Spam-Reason: orgsafe
X-Original-Sender: ulrich.weigand@de.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=C2srGkeC;       spf=pass (google.com:
 domain of ulrich.weigand@de.ibm.com designates 148.163.158.5 as permitted
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


--0__=4EBB0F43DFC44EC78f9e8a93df938690918c4EBB0F43DFC44EC7
Content-type: text/plain; charset="UTF-8"


Nick Desaulniers <ndesaulniers@google.com> wrote on 22.08.2020 03:13:13:

> >    In file included from drivers/tty/tty_buffer.c:8:
> >    In file included from include/linux/tty.h:5:
> >    In file included from include/linux/fs.h:6:
> >    In file included from include/linux/wait_bit.h:8:
> >    In file included from include/linux/wait.h:7:
> >    In file included from include/linux/list.h:9:
> >    In file included from include/linux/kernel.h:12:
> >    In file included from include/linux/bitops.h:29:
> >    In file included from arch/s390/include/asm/bitops.h:39:
> > >> arch/s390/include/asm/atomic_ops.h:56:45: error: invalid
> operand for inline asm constraint 'i'
> >    __ATOMIC_CONST_OPS(__atomic_add_const, int, "asi")
> >                                                ^
>
> It might be interesting to dissect this one.  Likely will break the
> build otherwise.

Do you have a standalone test case?  This seems to work fine for me
with current clang:

define __always_inline                 inline
__attribute__((__always_inline__))

#define __ATOMIC_CONST_OP(op_name, op_type, op_string, op_barrier)      \
static __always_inline void op_name(op_type val, op_type *ptr)          \
{                                                                       \
        asm volatile(                                                   \
                op_string "     %[ptr],%[val]\n"                        \
                op_barrier                                              \
                : [ptr] "+Q" (*ptr) : [val] "i" (val) : "cc", "memory");\
}

#define __ATOMIC_CONST_OPS(op_name, op_type, op_string)                 \
        __ATOMIC_CONST_OP(op_name, op_type, op_string, "\n")            \
        __ATOMIC_CONST_OP(op_name##_barrier, op_type, op_string, "bcr 14,0
\n")

__ATOMIC_CONST_OPS(__atomic_add_const, int, "asi")
__ATOMIC_CONST_OPS(__atomic64_add_const, long, "agsi")

void test (int *x)
{
  __atomic_add_const(123, x);
}


Bye,
Ulrich

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/OFB8976F11.85FB0DED-ONC12585D0.0057C857-C12585D0.0057F54C%40notes.na.collabserv.com.

--0__=4EBB0F43DFC44EC78f9e8a93df938690918c4EBB0F43DFC44EC7
Content-Transfer-Encoding: quoted-printable
Content-type: text/html; charset="UTF-8"
Content-Disposition: inline

<html><body><p><tt><font size=3D"2">Nick Desaulniers &lt;ndesaulniers@googl=
e.com&gt; wrote on 22.08.2020 03:13:13:<br><br>&gt; &gt; &nbsp; &nbsp;In fi=
le included from drivers/tty/tty_buffer.c:8:<br>&gt; &gt; &nbsp; &nbsp;In f=
ile included from include/linux/tty.h:5:<br>&gt; &gt; &nbsp; &nbsp;In file =
included from include/linux/fs.h:6:<br>&gt; &gt; &nbsp; &nbsp;In file inclu=
ded from include/linux/wait_bit.h:8:<br>&gt; &gt; &nbsp; &nbsp;In file incl=
uded from include/linux/wait.h:7:<br>&gt; &gt; &nbsp; &nbsp;In file include=
d from include/linux/list.h:9:<br>&gt; &gt; &nbsp; &nbsp;In file included f=
rom include/linux/kernel.h:12:<br>&gt; &gt; &nbsp; &nbsp;In file included f=
rom include/linux/bitops.h:29:<br>&gt; &gt; &nbsp; &nbsp;In file included f=
rom arch/s390/include/asm/bitops.h:39:<br>&gt; &gt; &gt;&gt; arch/s390/incl=
ude/asm/atomic_ops.h:56:45: error: invalid <br>&gt; operand for inline asm =
constraint 'i'<br>&gt; &gt; &nbsp; &nbsp;__ATOMIC_CONST_OPS(__atomic_add_co=
nst, int, &quot;asi&quot;)<br>&gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^<br>&gt; <br>&gt;=
 It might be interesting to dissect this one. &nbsp;Likely will break the<b=
r>&gt; build otherwise.<br></font></tt><br><tt><font size=3D"2">Do you have=
 a standalone test case? &nbsp;This seems to work fine for me</font></tt><b=
r><tt><font size=3D"2">with current clang:</font></tt><br><br><tt><font siz=
e=3D"2">define __always_inline &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; inline __attribute__((__always_inline__))</font></tt><br><br><t=
t><font size=3D"2">#define __ATOMIC_CONST_OP(op_name, op_type, op_string, o=
p_barrier) &nbsp; &nbsp; &nbsp;\</font></tt><br><tt><font size=3D"2">static=
 __always_inline void op_name(op_type val, op_type *ptr) &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;\</font></tt><br><tt><font size=3D"2">{ &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 \</font></tt><br><tt><font size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; asm vola=
tile( &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; \</font></tt><br><tt><font size=3D"2">&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; op_string &quot; &nbsp; &=
nbsp; %[ptr],%[val]\n&quot; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\</font></tt><br><tt><font size=3D"2">&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; op_barrier &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;\</font></tt><br><tt><font size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; : [ptr] &quot;+Q&quot; (*ptr) : [val] &quot;i&quot; (va=
l) : &quot;cc&quot;, &quot;memory&quot;);\</font></tt><br><tt><font size=3D=
"2">}</font></tt><br><br><tt><font size=3D"2">#define __ATOMIC_CONST_OPS(op=
_name, op_type, op_string) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; \</font></tt><br><tt><font size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; _=
_ATOMIC_CONST_OP(op_name, op_type, op_string, &quot;\n&quot;) &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;\</font></tt><br><tt><font size=3D"2">&nbsp; &n=
bsp; &nbsp; &nbsp; __ATOMIC_CONST_OP(op_name##_barrier, op_type, op_string,=
 &quot;bcr 14,0\n&quot;)</font></tt><br><br><tt><font size=3D"2">__ATOMIC_C=
ONST_OPS(__atomic_add_const, int, &quot;asi&quot;)</font></tt><br><tt><font=
 size=3D"2">__ATOMIC_CONST_OPS(__atomic64_add_const, long, &quot;agsi&quot;=
)</font></tt><br><br><tt><font size=3D"2">void test (int *x)</font></tt><br=
><tt><font size=3D"2">{</font></tt><br><tt><font size=3D"2">&nbsp; __atomic=
_add_const(123, x);</font></tt><br><tt><font size=3D"2">}</font></tt><br><b=
r><br><tt><font size=3D"2">Bye,</font></tt><br><tt><font size=3D"2">Ulrich<=
/font></tt><br><BR>
</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/OFB8976F11.85FB0DED-ONC12585D0.0057C857-C12585=
D0.0057F54C%40notes.na.collabserv.com?utm_medium=3Demail&utm_source=3Dfoote=
r">https://groups.google.com/d/msgid/clang-built-linux/OFB8976F11.85FB0DED-=
ONC12585D0.0057C857-C12585D0.0057F54C%40notes.na.collabserv.com</a>.<br />

--0__=4EBB0F43DFC44EC78f9e8a93df938690918c4EBB0F43DFC44EC7--

