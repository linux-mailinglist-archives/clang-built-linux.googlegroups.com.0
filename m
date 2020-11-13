Return-Path: <clang-built-linux+bncBCB33Y62S4NBBYNKXL6QKGQEO5UV2PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1012B1CFB
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 15:17:06 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id j12sf1413521plj.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 06:17:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605277025; cv=pass;
        d=google.com; s=arc-20160816;
        b=yE+xUbZTGu0V8SXcTUDWuY3ACgwkjEP8jeTRznwRsOQ6UINiygdZEXY0TUgiD3m1/z
         4uFN8cAwTeW6quJJImT+IU4r3fbnAYARo5onZJH3TpgYsu91NZilBWcCjJDX9mvU1G2u
         tb1GfZhfPKgHe4YVPTU8Y5dKshT2xMZpLscjyuoU3y0s4hI23N3ifq+cG/vcXRivdZGJ
         G94LMj0AnbTmHqFk/6JQG0HSgqFbbEpAw/NtZFSiQBsLZuhe1ha1qMg/B8muXVUu6LdU
         l23vQSwOE+q7G9sX3/bRzZLGd9SOqr91MDJVAhuTYM5N34HPnLScn6/dYDrIduDmqfHb
         FH2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=EG+NyZhVjNb0JgaiDUGLGfZmMl1AK0cqFMliZ1FEf1w=;
        b=zI5+lPh38GP59CbpMJhH89J+MQ47Rti7ojWuhHaC9qBbDNxVFrCAecS/OFkHuWAm0e
         NmtQB5mt2cr6YvSUU6WzYN8OPrOC5XIw7LPIP5Pb1nEV/+elq2PRfdSLPWbLqobKVT5s
         YZI+pN1XVmSw6Ap63/Hdbe5m5NfwEEHWEkM2JVyVj5fNh9EnNqiltv3mojv+Qi4iK07N
         racCLJWMxV8V0ue6x7RR6gfexCjuJnTmPQ2CfxTGx5OlAhHJ5bPccCyQPDUDAP4KrPIY
         7CKwaUcvKs6sYwWoPauuiWLWM9yvLYqNwmCa7zGjNhlOCytprPDJEykkaWkycUMa+ru3
         gU6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mcgrof@gmail.com designates 209.85.215.195 as permitted sender) smtp.mailfrom=mcgrof@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EG+NyZhVjNb0JgaiDUGLGfZmMl1AK0cqFMliZ1FEf1w=;
        b=BG+WG8dmiyEBcHTq49hEE2DGJuaWF0+6QCjihjUE6urT9DkHtEx6oeOs9dMw7HtLWw
         Fr7uA4VN1LGqb3NA8IWPXfn78+sX0km77rr/wjyaa1ebChGFV/esfKjniSKZhC3Hvq0J
         D4PJzNhASw1P4y5PDsOpJqeI2zBjPtssv1l0GrnYX9F+gdZV98FuYMUvSGkKQ/JSwOlM
         +rKyE8wiita4xOwcDMm/Me0esVeiM4HRg8vv98YxIH932r4iJdjQ4Xec4F5EV1hpEvfN
         812oB0EQhOw2S3OpNdw3pbfnnfC/4uCKFoYdFrZ4KBd9hUh9qAKJ7fcGMV4Oy1wgxg7x
         CEew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EG+NyZhVjNb0JgaiDUGLGfZmMl1AK0cqFMliZ1FEf1w=;
        b=tx9kB1HkLWSS/YfPxj0TLGiTHFhjxas2vH3jimQXeGryf2DzBUbvWnv33aALpsdQ/s
         bkeRiP3Ck9YepYH8btfyNk+m5MyafPn4vlBOtGY76zUmvo3IJq1wP5cwyiR1x3cyqPCa
         HOLPNKr5cXrHXdu/NCSxVELHRTq/6sBGjpnPCULVyfEcT/9+BmBZGZrizx25HrT/y4du
         Bwg1EqZkgVA912Hhg2yXPZAKm5SUR9Kve+DWni1NHgg8o/LX0e2UD9LkCRB5PgKdGQqX
         S4rqoYYCF0+lqfGeVqdklXKkuWF4uiMlQtNfnt3bYrE+t1TrCJN1N/VLKpDvx3NlDnIQ
         hVPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sH869IxtLI9W9tQLV4eSnOy9JGSaFmDTj9U9IaTBsGEV6VSTD
	1OadpNxsp3+pYYRLrPz0FLs=
X-Google-Smtp-Source: ABdhPJzrsW/JfMAJ5vc34sGP/+JpcfYjG4XYNCWjaAGAgR0Hv//1RuG0vtP6o8a9EeE99V9Uz0zKMA==
X-Received: by 2002:a17:902:8302:b029:d8:bc5c:42cc with SMTP id bd2-20020a1709028302b02900d8bc5c42ccmr2134945plb.31.1605277025212;
        Fri, 13 Nov 2020 06:17:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b086:: with SMTP id p6ls3152930plr.7.gmail; Fri, 13
 Nov 2020 06:17:04 -0800 (PST)
X-Received: by 2002:a17:90b:f07:: with SMTP id br7mr3438835pjb.178.1605277024629;
        Fri, 13 Nov 2020 06:17:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605277024; cv=none;
        d=google.com; s=arc-20160816;
        b=yeqfHN5xQah7g0pdUElgcjLfflja8pNOinj6czVttnOrKaPSewWhD78Vzt69MVBtj4
         E9J4+9uzTww89wglMTlh1BcKkWJVmYwAGk+RXxkfZHo9r53zT5ly/NR991/cGn+E9e4m
         rFDvzwVMAfcCx67xxoiU8YAwuvBUEP7do1FBFsuJKymv7ImUTuqwFhekI290kDeKLT/d
         eJa9oiKic7CAEwHFPXxEsRqDyy62ZBK9O8zeNY2/cSXNaKUesVnINz5Si0O2mpW4H1Zs
         NIYwTLPnVBo+QKzmpDID+uo7hOSOgA3E4N0ayZPgVA+biKISulv4mqNCmogMrYy3st3u
         6jiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=muGv9UA2yOWJO8OBFbyd4k8hs7CA6S1+a06CR/bKjo0=;
        b=YZ6nAkRhWV8GXQhlODGKtmZEzAUMkxWS0kSjt2IwK/z6zs+jsHkfAWHRQi/mvORhg3
         dwILTSo55+TfBwH7j2wO5liuicSkZYdz++M1GuC01V9R6eTcp0jtiKz9AE5hR/RRHF2z
         w2Vz1XAYtve+sGE8Wdnqr4wJECukNSllQYdZvyZyTKbwjL2OJJpC2+TLHsHThrDkS5KR
         JOBUrmUevaSD6litnTC7vBkGoTXZBCyYvA46PrTyqvhKDH46ZmYdr+AO9zkvGp6UcCLM
         cLdYkoVQqCigKIsZce6FLhMFf/2fKzB+oI8sFol7ML4PRy8nOvp8xpGrYoz20uM5XILk
         C7iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mcgrof@gmail.com designates 209.85.215.195 as permitted sender) smtp.mailfrom=mcgrof@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com. [209.85.215.195])
        by gmr-mx.google.com with ESMTPS id v24si531111plo.1.2020.11.13.06.17.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 06:17:04 -0800 (PST)
Received-SPF: pass (google.com: domain of mcgrof@gmail.com designates 209.85.215.195 as permitted sender) client-ip=209.85.215.195;
Received: by mail-pg1-f195.google.com with SMTP id e21so7158332pgr.11
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 06:17:04 -0800 (PST)
X-Received: by 2002:a05:6a00:c8:b029:18b:b0e:e51 with SMTP id e8-20020a056a0000c8b029018b0b0e0e51mr2143971pfj.37.1605277024230;
        Fri, 13 Nov 2020 06:17:04 -0800 (PST)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
        by smtp.gmail.com with ESMTPSA id mt2sm11475078pjb.7.2020.11.13.06.17.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 06:17:03 -0800 (PST)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
	id 3854240715; Fri, 13 Nov 2020 14:17:02 +0000 (UTC)
Date: Fri, 13 Nov 2020 14:17:02 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Tom Rix <trix@redhat.com>, Andrew Morton <akpm@linux-foundation.org>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Iurii Zaikin <yzaikin@google.com>, linux-fsdevel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] sysctl: move local variable in proc_do_large_bitmap() to
 proper scope
Message-ID: <20201113141702.GI4332@42.do-not-panic.com>
References: <20201109071107.22560-1-lukas.bulwahn@gmail.com>
 <e0cf83dc-2978-70ce-aeb2-37873cc81c03@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <e0cf83dc-2978-70ce-aeb2-37873cc81c03@redhat.com>
X-Original-Sender: mcgrof@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mcgrof@gmail.com designates 209.85.215.195 as
 permitted sender) smtp.mailfrom=mcgrof@gmail.com;       dmarc=fail (p=NONE
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

On Mon, Nov 09, 2020 at 05:26:37PM -0800, Tom Rix wrote:
>=20
> On 11/8/20 11:11 PM, Lukas Bulwahn wrote:
> > make clang-analyzer caught my attention with:
> >
> >   kernel/sysctl.c:1511:4: warning: Value stored to 'first' is never rea=
d \
> >   [clang-analyzer-deadcode.DeadStores]
> >                           first =3D 0;
> >                           ^
> >
> > Commit 9f977fb7ae9d ("sysctl: add proc_do_large_bitmap") introduced
> > proc_do_large_bitmap(), where the variable first is only effectively us=
ed
> > when write is false; when write is true, the variable first is only use=
d in
> > a dead assignment.
> >
> > So, simply remove this dead assignment and put the variable in local sc=
ope.
> >
> > As compilers will detect this unneeded assignment and optimize this any=
way,
> > the resulting object code is identical before and after this change.
> >
> > No functional change. No change to object code.
> >
> > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> > ---
> > applies cleanly on v5.10-rc3 and next-20201106
> >
> > Luis, Kees, Iurii, please pick this minor non-urgent clean-up patch.
> >
> >  kernel/sysctl.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/kernel/sysctl.c b/kernel/sysctl.c
> > index ce75c67572b9..cc274a431d91 100644
> > --- a/kernel/sysctl.c
> > +++ b/kernel/sysctl.c
> > @@ -1423,7 +1423,6 @@ int proc_do_large_bitmap(struct ctl_table *table,=
 int write,
> >  			 void *buffer, size_t *lenp, loff_t *ppos)
> >  {
> >  	int err =3D 0;
> > -	bool first =3D 1;
> >  	size_t left =3D *lenp;
> >  	unsigned long bitmap_len =3D table->maxlen;
> >  	unsigned long *bitmap =3D *(unsigned long **) table->data;
> > @@ -1508,12 +1507,12 @@ int proc_do_large_bitmap(struct ctl_table *tabl=
e, int write,
> >  			}
> > =20
> >  			bitmap_set(tmp_bitmap, val_a, val_b - val_a + 1);
> > -			first =3D 0;
> >  			proc_skip_char(&p, &left, '\n');
> >  		}
> >  		left +=3D skipped;
> >  	} else {
> >  		unsigned long bit_a, bit_b =3D 0;
> > +		bool first =3D 1;
>=20
> This looks fine, but while you are here how about setting, to match the t=
ype
>=20
> first =3D true
>=20
> And then only clearing first once
>=20
> if (!first) =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0
> =C2=A0 proc_put_char(&buffer, &left, ',');
>=20
> else
>=20
> =C2=A0 first =3D false
>=20
> Instead of at every loop iteraction

Thanks for your patch Lukas!

Agreed, please resend with that change as requested by Tom. And also
please add Andrew Morton <akpm@linux-foundation.org> to your To address.

  Luis

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201113141702.GI4332%4042.do-not-panic.com.
