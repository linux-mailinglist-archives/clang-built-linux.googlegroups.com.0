Return-Path: <clang-built-linux+bncBCS7XUWOUULBBL7NRH2QKGQEQK7C2FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 687431B6D1A
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 07:18:40 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id r10sf5966802otk.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 22:18:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587705519; cv=pass;
        d=google.com; s=arc-20160816;
        b=SuUDagww8ncfhetH5B+HYIPAT7Z8zsBRH+qx3Iqm9l57xP5KD/YeBdTp0ubmBPJwLh
         LufCjyxrhORf3DSqaSKrVGUTil1rZnH4NEGlO+p5qXWEenE3fCat208V7cbqegw8nQ0b
         z3RyJpHQCS5JLRgst2CUJYgD3IiN8nbSxEWWekOP7IAu7WTuMqBUe0m4J6W+PKk1eTEF
         6MsT/Rw1U/tODzVmLTMcD/mlabZgnGQiq+eOTaIGkAWbnQ6HGXgPtre3XL+Rcm7vKsdx
         CgY3FpiJPCLCHjR60n467DUvDHnF8OPRxoSYheeWUhVo+M64lF0an6BOkji7EU5VQ96R
         CH5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=xCs0imfeDMaJ9nuew0SHB7OIX6cR49amjngIl1iMeV8=;
        b=voa77S+RYU9s6a64wzs8NQlzzVqDVc4buVfETKFI8PVQyTd9aykgYUSaQGqOk0RMK8
         q13a/WLJtzOOYfDjCTpY2lZ6b+e2sFrzJM9ejbvsrwbyLx3ZSUfAm/X7lVdGwzZ8bhIU
         UFE6Kri9+3+YgYOcbOit+l/M8+mky3nCelhkvJbnF5udtRvsHgxCKY94htsHaDKmS3uX
         PWtSnw/mqmWr8SA8arYRMDAhLy87mrs3nMW9ApKL71hAX1fMlc+Q2C4+oy9OZlGu/b9/
         6XSCZsuIiIBrcpQiA3XdIV0EE2E0DgA3QurDoPB/g7uc3wXJx4wUQjhM4yquPdXVqOs/
         wHIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KXYKfEgT;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=xCs0imfeDMaJ9nuew0SHB7OIX6cR49amjngIl1iMeV8=;
        b=sYGNp0kTm6XW9f9IqvSjA584uuMcpQ3r5cdi1SAgB/YqaSziiHjmUPN6Re/ggOAgZC
         AAvdjU6s9H/aAjqm1PaM8K/tp2vS1iJmYK7lcLRtOL/311ZWEra8Dq7+2dN5qNONqTPi
         H5dD/k//2HYMZiHdDvHOOVqXIBBC9rpJbhhc3bcRuhl25aJsug/q6MjBAfg+o3jW6JfD
         EKSQKy1Ngon58YTdT2PYOEiqTeG8tkdPiv6+o9x+4e3H4FHm7WxvDQwCr4DVEexzGbDs
         Q5KWr5aGcUFuYisGduo6XAAIeNcvvUx3cMChZms3lYD5p+YrGL9zvj87/h5QRC7rHsMc
         os6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xCs0imfeDMaJ9nuew0SHB7OIX6cR49amjngIl1iMeV8=;
        b=Zh4wGrKiyUR3ad8gmZR3ot4GWtS1ipGWnDj/qcjPiGQsCcJM7Dyrn96Z54IcJHqdyy
         9ZHMiaAFsqByQMDSPuakF7e6cbPVl0GWRCGE7fs3aseOhnrwTn6BqyU/LkvDlN8/fDvK
         E4BbnQUsHE3xNaVHruTCypJ1u6MdtRf45j5LIhJp8yQuflwCkILCYRQvM59BVT8x+tyx
         LqFZgE8zChbrDiB8BgbLbop4mTk9BWCjb2hrbbeL4sA8H1DW3Op7SM1L6n3+vfrq1FF9
         IHeMfOrqjq5lchkFiasri55u4G5IOOp1ug6TOssH0HQjYNmBIv/aAjvs71hOVlml5uAk
         G2Fw==
X-Gm-Message-State: AGi0PuZpuXnNb/EDzSiIDM0cv9P0iQAn1Vzxj9UzN5baHvFRHyYLhG3J
	u6YDzv9CUeC21D+3inD2XeQ=
X-Google-Smtp-Source: APiQypJQGFuSAOTroJMmlTntKXlmG2gr3GdJh1gud90IdKoZQ9PGB95VM5D1K5E8TLe1rCfKuz20jA==
X-Received: by 2002:a4a:c18c:: with SMTP id w12mr6212586oop.93.1587705519169;
        Thu, 23 Apr 2020 22:18:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:30bc:: with SMTP id g28ls2082573ots.4.gmail; Thu,
 23 Apr 2020 22:18:38 -0700 (PDT)
X-Received: by 2002:a9d:1eaa:: with SMTP id n39mr6699677otn.238.1587705518839;
        Thu, 23 Apr 2020 22:18:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587705518; cv=none;
        d=google.com; s=arc-20160816;
        b=VApHkmiBcwGTfzQwhTwlSxYavHBJeECxDtQrthPdqZ4rY5w87msf1HaIsuF/xrrZVb
         IGngvAK2W7MMfW5iuGs2ipeuQXGAPx8tW1ODd3FGaaiSiA3GvYUD1FJ/C1a1EicnExXa
         zwin3SktwVpJk9AZMC7QxWG6zaIBlNKM/S/XVuAHubOd7pufBp8cFA0wZM8ItBXFcUwt
         XYMDZT11cFpTdSCSuvW+HyOQnXP9DGGWDqSpYirGWwcNee1lN90lm1U8w2MHEkr3OPqu
         LIF7ouTfidcguKk+gTbZRu4vRpi/0rZfn027LPCJnc9ek+ZwFxPr4+21ArjRp/vNdT5I
         tqcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3r14pcehiaeg8c1gluTkCirQUS8K8VVYGROm4MkK5QA=;
        b=o0UciCPOFmd3dHtP1hCpdOA+4aUOSTdHRGUgo55jaNS+HgZzFMoo3f9ZBDgz2Qrp5h
         VGQhP/vhKLBwdIGdV6HfnRfKW22pi1VCU3RdPlL4c0KdJbE5wGfeMB1C/88lIzFk2PVn
         NFmAGA42fnvCpsdBm9Rtk6Jl3iMiCiAwlf+cWRPklpv+QXNP+OEDE/v+5njbNH4qX/KG
         fBVwDnST+y3CJ0L6fkJUkum0rieJJa7+HBQQRluFor2VOoYsVlXBz1bM6wVc5+S8kwwe
         1j898/ikNfxdCAnBQFbYJvkDA9D40sI6rMmrkkSHzBgA4HDxP/94EUQjR9Y8/t8aNN/D
         7Mrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KXYKfEgT;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id q18si420194otg.4.2020.04.23.22.18.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 22:18:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id a32so3476076pje.5
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 22:18:38 -0700 (PDT)
X-Received: by 2002:a17:90a:8d02:: with SMTP id c2mr4424414pjo.113.1587705517818;
        Thu, 23 Apr 2020 22:18:37 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id c84sm4662673pfb.153.2020.04.23.22.18.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2020 22:18:36 -0700 (PDT)
Date: Thu, 23 Apr 2020 22:18:33 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	Tejun Heo <tj@kernel.org>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Dan Williams <dan.j.williams@intel.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [RFC PATCH 1/2] kbuild: add CONFIG_LD_IS_BINUTILS
Message-ID: <20200424051833.4om5dzimpnvegeab@google.com>
References: <20200419131947.173685-1-sedat.dilek@gmail.com>
 <CAKwvOd=Rt0q0+nRJasc8GzOXSj1_-jZGNc2bAWJkmd7Vzr8FFw@mail.gmail.com>
 <CAK7LNAQzh8EajBkXSSgFh2=5iF38XvkADf1C7J0JnwTov=NmNQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAK7LNAQzh8EajBkXSSgFh2=5iF38XvkADf1C7J0JnwTov=NmNQ@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KXYKfEgT;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-04-24, Masahiro Yamada wrote:
>On Fri, Apr 24, 2020 at 3:44 AM Nick Desaulniers
><ndesaulniers@google.com> wrote:
>>
>> On Sun, Apr 19, 2020 at 6:19 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>> >
>> > This patch is currently not mandatory but a prerequisites for the second one.
>> >
>> > Folks from ClangBuiltLinux project like the combination of Clang compiler
>> > and LLD linker from LLVM project to build their Linux kernels.
>> >
>> > Sami Tolvanen <samitolvanen@google.com> has a patch for using LD_IS_LLD (see [1]).
>> >
>> > Documentation/process/changes.rst says and uses "binutils" that's why I called
>> > it LD_IS_BINUTILS (see [2] and [3]).
>> >
>> > The second patch will rename existing LD_VERSION to BINUTILS_VERSION to have
>> > a consistent naming convention like:
>> >
>> > 1. CC_IS_GCC and GCC_VERSION
>> > 2. CC_IS_CLANG and CLANG_VERSION
>> > 3. LD_IS_BINUTILS and BINUTILS_VERSION
>> >
>> > [1] https://github.com/samitolvanen/linux/commit/61889e01f0ed4f07a9d631f163bba6c6637bfa46
>> > [2] https://git.kernel.org/linus/tree/Documentation/process/changes.rst#n34
>> > [3] https://git.kernel.org/linus/tree/Documentation/process/changes.rst#n76
>> >
>> > Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
>>
>> Just some background on Sami's patch.  Originally we were using
>> ld.gold (for LTO for Pixel 3) before moving to ld.lld (for LTO for
>> Pixel 4 and later).  Not sure if Kconfig would be a better place to
>> check if gold is used, then warn?  I kind of prefer the distinction
>> that binutils contains two different linkers, though if no one is
>> supporting ld.gold, and it doesn't work for the kernel, then maybe
>> that preference is moot?
>
>
>I prefer LD_IS_BFD, like this patch:
>https://lore.kernel.org/patchwork/patch/1039719/
>
>We do not need LD_IS_GOLD, though.
>
>-- 
>Best Regards
>Masahiro Yamada

+1 for CONFIG_LD_IS_BFD

Usually GNU ld is also installed as ld.bfd and can be referred to by -fuse-ld=bfd (GCC >= 9, or clang)

The repository binutils-gdb includes two linkers: GNU ld and GNU gold, so CONFIG_LD_IS_BINUTILS would be ambiguous.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200424051833.4om5dzimpnvegeab%40google.com.
