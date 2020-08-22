Return-Path: <clang-built-linux+bncBCIO53XE7YHBBVMWQ35AKGQENBC34PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id B70A324E9F6
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 23:17:10 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id y2sf3091777oos.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 14:17:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598131029; cv=pass;
        d=google.com; s=arc-20160816;
        b=qjRp3sWHyjfolnYxQsJKGkcwMa7lpr9nv3Zjaz3xUgCKz3L0kOocViPT91KqjHNhSb
         puHjNDU7DYZLbJl9DxdOtvzus/onO2rm0Tj4rbhjh5mgaInq8wROxG47WGjDldmvxQqz
         WZ5A0/16my86ewOwnqOboY5mvSoLAqlDxs8dpPw8XEHNnmnuEDKNdxgOgtPsFjyayQw/
         X652aXIHiXycfjcDotBCTYes5qDr4xAmMF84NE8yUNY73LOcWHmzjvZqf0/qz/puORhw
         VO19N1nNCDNS+Upwg59HLZ5SIE583hCFhDPmTxiLvTHRfAWKl8A/Xo5FFtUyy9jHP8m1
         2R3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=lb4qe55y3Vv3iFpNuCHVUhsDIH4158W0vjLx6rRHMHo=;
        b=V/TPG7XZVg+smRTb/PF0ah3WfLBHmSh9v1F0od2ritNfoKhfrPF/HDYnfYkuhZUymY
         eV4+dDk7ZQxYJ5qpcTQL42TKDI9f2jHN+kkEBBBjcgPNqQ/AkyrsEfoSWWjn0NiC6zJ3
         5LDpyoI5pgP8vZ1c8gmLYBS8xWK5Dfns5fIvsFaylsZ0/aO5b+LgmI2hd9NQPns16aLP
         doYyF5S4fFlWAvenzDFoq0eMg3KT0WOwmYyDyTf39wck1wJ/gKJMhy7LxD5TSPXzJ4A9
         o9Zmxh34eCId8EHIE3UWSggITV6sCSA93Vz3jkkoepgBHFXuzfYaD6MTowYh2mUWq/in
         qF2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WmOc7Bz7;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lb4qe55y3Vv3iFpNuCHVUhsDIH4158W0vjLx6rRHMHo=;
        b=Ob9jhqMCXaiyWkhGp7Nbjm3A0gb5u9PDHv/2kD2WIV+e654ur3RZX0xKBLvz5QalVf
         cKd5TDDjYRDNJfkDpALRj+VoPUEWS3CGq6NwYbo7m5yzZjlJpJwHYGrMb7bCh9Rqk8C4
         GmecYXaCOx0prDDVatOF7mlzHIETq1dsUk2t3J4tn9bSUttsu6fVziec87blpO06tSEM
         TZNTVzc15AePk5z+ts7sNsqZ09UEn4OmLRTu9fPw4JBLTx5xNN9c/WX26kwCmfgRcFm3
         eObxiCyTt9GN4OIKfVbAj9Zk6wQXr9JHIcdsHnF9Trj10t+mHUg4/K+n59Zl3vZP8ERk
         Dwpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lb4qe55y3Vv3iFpNuCHVUhsDIH4158W0vjLx6rRHMHo=;
        b=hBjqz/uVP9j5ClAVFCjvgrgWO8x9Ll/qX8JUm9vITED4UNbk4WUelYYnS8B43eteIo
         ZpnlY6Wwg9WiVfh5wWo8WPI+uDH8hKkMIj7VY36LKqUfN6IGMRSnEuIaBG/JgU36XEhC
         XwiD/eXUsO5yYrvm5xVnRpu9rl4jpOtiLuntQ/l+4AXM8m72laXbweb649EgKJnIlBXD
         g1N9c0If+XvWsQ8yfJwNPriKBdNp6n5zijVQc2IRLtDCU5r3Q+VlJEN3hzf1J+NVER/B
         UOkdveIgjgQMKiQI9fpLGhOTc2R4bBaPsZ9wiBswJvXumLafFH4ZoFUJYjpyk8+st0b9
         TrgQ==
X-Gm-Message-State: AOAM533k+xZRiYeh70SQMUl0yu34fI/L3erkSZ7aeX4596YZjj4gQwGG
	QakcB0w2l35cLFmkCcruP2c=
X-Google-Smtp-Source: ABdhPJx+1U3iuVeLMS7NG3JI1SWWhZgqaSDuQYu836SXjth0vk2jAukfIwIGofaRWSjuciFeEtCO/Q==
X-Received: by 2002:a9d:30c7:: with SMTP id r7mr6099016otg.218.1598131029256;
        Sat, 22 Aug 2020 14:17:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d9d4:: with SMTP id q203ls1206837oig.4.gmail; Sat, 22
 Aug 2020 14:17:08 -0700 (PDT)
X-Received: by 2002:aca:7297:: with SMTP id p145mr13287oic.156.1598131028930;
        Sat, 22 Aug 2020 14:17:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598131028; cv=none;
        d=google.com; s=arc-20160816;
        b=K4SrMfQ+loNc0PRJgCxE0wUe9QOrxsFwJfuYaJMkxc2dCdxBB0A849hpGNiDAMuNM4
         Fgmx//eZy6dvXsxHeU9BqhAPzpDQFPX66J/BleNtv5a3ylxt9GiR9l441ciQAreew669
         1TVUov1XeH9s1RfKcCZQ+3yIJ2a86/KAHRpidBgZSnhDhTtUMh1f69mNaW2bvO6q/cin
         FwvXXJ9gIVPeRT9wFCkfXy5PFgp01PkODTx6Ptds4Q760Pbqg6ajayySHQO91CX61kdy
         6q4XTX1s8FPiNSQq8BBA+JkpaEWsqBT7AhP/ER+n9ImT8XbklOg8YG6408xjBnmwa9r8
         eSeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=yH1SIT4I5zLgF08JR3jAcoSi73lF2BBLmlCMe56jsJo=;
        b=RT2wYXTgRTr/Atub58nd7ZXPcqyqabk5PJBecMlqfx9S6z28nl0Mr2h0SmsN7q2Fnb
         Mgf5R+/2mrj1GTjURfNa/AMPjkggcQq7bwZvSohWzj/WNB4xbfLRImF+11B602PnyHlO
         uv55wBYBawTyDPFrsiVq8oglJItv7bSxcnq47R+uzM6FhxInFvoULbSJJtdH1pSZCWcs
         DOZukzHltd9PcTLwMhWEXSClYFW7zV9QUQg456xzY6ptyJyGV6ER2yZ7OWclnAX3wMZ2
         EKJqVEZoyU6crDIvOF/FytYSeQYD4EWv9qPWEjnxKItKb8/zTyqfp3eJUbvHP5k8svTQ
         xWQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WmOc7Bz7;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com. [2607:f8b0:4864:20::f41])
        by gmr-mx.google.com with ESMTPS id 22si282968oiy.5.2020.08.22.14.17.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Aug 2020 14:17:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) client-ip=2607:f8b0:4864:20::f41;
Received: by mail-qv1-xf41.google.com with SMTP id dd12so2186994qvb.0
        for <clang-built-linux@googlegroups.com>; Sat, 22 Aug 2020 14:17:08 -0700 (PDT)
X-Received: by 2002:ad4:576c:: with SMTP id r12mr7992606qvx.232.1598131028339;
        Sat, 22 Aug 2020 14:17:08 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id j31sm6736810qtb.63.2020.08.22.14.17.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Aug 2020 14:17:07 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sat, 22 Aug 2020 17:17:05 -0400
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Zhenzhong Duan <zhenzhong.duan@oracle.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>,
	Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
Message-ID: <20200822211705.GA1382515@rani.riverdale.lan>
References: <20200820130641.GA536306@rani.riverdale.lan>
 <87zh6ohm03.fsf@nanos.tec.linutronix.de>
 <20200821230435.GA56974@rani.riverdale.lan>
 <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com>
 <87eenzqzmr.fsf@nanos.tec.linutronix.de>
 <20200822035552.GA104886@rani.riverdale.lan>
 <20200822084133.GL28786@gate.crashing.org>
 <CA+icZUVf9a8LC2Mf0cFymYQfALWs6bVfR1v1nRbxKaLAyU6NkQ@mail.gmail.com>
 <CA+icZUWGHo3mkN4=ZYeU37p8KJhxTXS5QKcAvq_HaqTHmFkw2g@mail.gmail.com>
 <CANiq72=3iOh5Z_rboZf-_GUpBE2LUUv3yPKOVNN_XmaNswdNSw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72=3iOh5Z_rboZf-_GUpBE2LUUv3yPKOVNN_XmaNswdNSw@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WmOc7Bz7;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Sat, Aug 22, 2020 at 08:17:32PM +0200, Miguel Ojeda wrote:
> On Sat, Aug 22, 2020 at 11:52 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > I am asking myself who is using such ancient compilers?
> 
> There are many users/companies using older versions of compilers,
> kernels and everything. GCC <= 4.9 will still be used/supported (by
> third parties) for a handful of years at least.
> 
> However, the important question is whether those users/companies care
> about running the latest kernels. Many of those definitely do not want
> to touch their kernel either. For those that do, there are several
> longterms to pick from that still support 4.9, as well as other
> workarounds.
> 
> Thus I am usually in favor of raising the minimum whenever new hacks
> are required to be added. On the other hand, we already raised the
> version twice this year and it is not clear to me what is the minimum
> version we would need to go for to ensure this does not bite us.
> 
> > If this is a real problem with GCC version <= 5, so can this be moved
> > to a GCC specific include header-file?
> > Thinking of include/linux/compiler-gcc.h or
> > include/linux/compiler_types.h with a GCC-VERSION check?
> 
> That would be better if it can be done, yes.
> 
> Cheers,
> Miguel

The fix landed in gcc 6.5, 7.3 and 8.1. The bug is presumably quite
difficult to actually trigger. As a sample data point, I verified that
7.1 vs 7.1+fix have no differences on 32-bit and 64-bit x86 defconfigs,
on current mainline.

Assuming we don't want to risk removing force_order, I'd suggest
- make it an input/output operand, so it enforces ordering fully.
- either restrict it to gcc < 8, or just provide a proper definition in
  some file (maybe arch/x86/kernel/cpu/common.c)?

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200822211705.GA1382515%40rani.riverdale.lan.
