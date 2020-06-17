Return-Path: <clang-built-linux+bncBCS7XUWOUULBB2XTU33QKGQEEX4VTII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A812C1FC644
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 08:36:27 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id d20sf1117702iom.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 23:36:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592375786; cv=pass;
        d=google.com; s=arc-20160816;
        b=L5MatsMreaX5BtcQonGPIEve9G0cUoBnpsgiWn9rFl4+xtFj3JwccgvTsuMdUVuQoa
         lKWAju0m/K6nD+xnrE6eU4RVM1o0b0hadn0vop5iyxbD8sd2zxZLIW76cXVjPbkNgeM1
         xTMB1Usk1lV0Zo9vdfizjAHqAS2kLRwJiRWmRsGxSt+Davh3sNETAJyZXxh6eGh6R/MH
         QhaeW+jzcSPeuNjR9il8GlbvB9EmSgNZCF2QuOPYTyJ5aATXRW+f+ogXJB7XfchDV+Md
         n60ICx3+GqDuxwqBr9BTeXZo7+wyP5rXy/Lm2h/Vx2G6zeKDSLZ0HuTF9T/5grHvUZHq
         FGnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=d0CpHwyxtsZzXnJIJ4Wb0H7qO7v9nYcwuFfSXbZd8JM=;
        b=JuZaseB94EVo8yJEHYbN0eiQ5SRGKeG0IfmaPIoS0Mx0YDa1TTudIXF4tjlUnFNL91
         vyEH5dBbgsOq456RjuBLlPgANgf92+mMJbdWzYdhxKT/6GHh26PklOq3YDq8mGcN3uCD
         uzhnhvwBbY6YfAxZZVldHeJ4VRu2MMPQeT44BQpMpHDx9vMOfmJmJ15zUWHoS7Vuu5xA
         Ai/gjybfWMzbljM9F9Pbjx5cBM973NpG2YkB2aTcQTSrtu6b6dKpDVWRkd4IJhRkASmW
         zlf62Zhaw1jI/3ztFxzpgTFQYE/THqNubW/cpo9l94Tp0Fpod5+zz+xRSrIGj5a7cO/A
         MAuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rvqd9LWW;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=d0CpHwyxtsZzXnJIJ4Wb0H7qO7v9nYcwuFfSXbZd8JM=;
        b=AOVbEvkjuhUgDxRLGMZnkxVrVxWlcl8JvxX9HtfXGDi3SsboSP4qb4z/qLcwESl14g
         IHvXuVqHAg6UVtL+aieBy8Vbe/7B14/BfvAWXyGhvi2Jt4z8TiVunt4ZaLDNHjp31Qu8
         AmjEsDITlZxxoE651nIbTEzOFx5l8HB7lG9gMi4fVvs+UfpeKolCcpKgIE6K/zooIs8T
         xUUlfznD5yoAF98fd8XfzLxD1O1SIvzSCMn1+WdZDSSNaZUiDE4jsCzY1nb7quOciJBe
         1iqOXNppbwvBm8avp1Cx6yriv31jJrd+i1bEEmk6chMjRi9UhjPk468+Bijn7HA3uQMd
         GA4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d0CpHwyxtsZzXnJIJ4Wb0H7qO7v9nYcwuFfSXbZd8JM=;
        b=m9dh74KP/prceCsWMlp99Mk6pfPd1MxiFCJeDRTJMPQCDmzZc9Pl3zffT0/vhjRppo
         03FSqLyRTnVJaajp10jQAdEx7MvNlKLZ6/i3yosBIUnzB15wSDlqIi1XsVTrhR0aXTcz
         T035h+UTHj2YT3A15VXu39ibZ3LC5UeZFhJ2z2ItrQ5Shu+s8jP4tRM6aMJ3xBTluClb
         fOBCdsgg3oJhhTNoRLniakvfcLGkuSntK2tbQ7R6S/qxx/Gq+KH4VdK+BF33rY5zAG7d
         uJBmTV7dnMDFK558xFwIuHHfWEPtHSSIJrFF89fBlB9qIehyeJ8Rk5vZ7BUFtKuGqwC+
         1Blw==
X-Gm-Message-State: AOAM532n5eK4e8EHOyGXNYn0onQHfFXC5oDdRlXp3EcVMwRkwVd52QLw
	BK3/p4jiPf/5oHpRW/vw350=
X-Google-Smtp-Source: ABdhPJw3Qw0/VYpZ2pl/6Jse/AioUY2FPZYKSHYj67GBESEwe+FsvIDZgGXvJGVw5ZQvGdobErYiPw==
X-Received: by 2002:a02:c6a7:: with SMTP id o7mr29089956jan.67.1592375786407;
        Tue, 16 Jun 2020 23:36:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:a784:: with SMTP id e4ls135656jaj.1.gmail; Tue, 16 Jun
 2020 23:36:26 -0700 (PDT)
X-Received: by 2002:a02:94e6:: with SMTP id x93mr30461297jah.116.1592375786025;
        Tue, 16 Jun 2020 23:36:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592375786; cv=none;
        d=google.com; s=arc-20160816;
        b=uTDTfRNWvoQoYXinNsf9+p7pji7oSUiiQ2iK1llQmvKhojf0cYtCilc3pLHtbchahY
         yRmYTA1SUP7w3lBHv19xDtlKDBdoqxHWpIoL13P/uCa7g1ls0za63Zc20oZ6Ezr7ifHF
         wnZFnfKe9PD+hWJa1utrgFrALlo6JCdMztvFhN7GGoS+foKK4kZMGjyz5C2n29mg7p+h
         VnJ9/K7PpKcUp999OxrRt//1Jqh8EK/uGyySuZwTyOLdZzF1kMtObQ015YWQ9TOrkjqf
         HjTb6UCwdWaC+OYlgKHVo4zhiq/9dF7UZk9lZ6BPzxfweKG33/Q9S6KxwNWN2/P455Bn
         L/xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0hmKmXCxCRcQALPYbnFdxEvUlQkPks6VN/iZhbvkJ4k=;
        b=fzKP+JFbCfry153IEnEU5oZAZeUe51WCRlQYFA/3m1HvimNxeUusQgON3ThZlYPcFk
         J6wFiP5TzKbGwpcufNom0zSVtSqFHb82UTyF9cuDftSw7zxvZeddjUs4t050Zj4E2K9u
         tyd/zOIrGZD7Z/+TixHXFKOChUtiD9dt53e+WPdLDAbRNX7akyKRF3xTpcSC54+LzZJv
         YCrXWqiLocTFlSyGi90nHqJzVphs/aqgrdZnPKxHztHAcNl7/CTNPVCNvyCDH8v88A1B
         TKNRsCHs05MVfxwlOckBX1ThRoW+Ryh57ai6js5RWJDNKI8rUQ1+/ZuelPUqgXKS6/dY
         1tqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rvqd9LWW;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id i20si98447iow.2.2020.06.16.23.36.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 23:36:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id ne5so507629pjb.5
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jun 2020 23:36:25 -0700 (PDT)
X-Received: by 2002:a17:90a:4eca:: with SMTP id v10mr6784491pjl.170.1592375785192;
        Tue, 16 Jun 2020 23:36:25 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id i125sm15909001pgd.21.2020.06.16.23.36.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2020 23:36:24 -0700 (PDT)
Date: Tue, 16 Jun 2020 23:36:21 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>, android-kvm@google.com,
	daniel.kiss@arm.com, Tom Stellard <tstellar@redhat.com>
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Message-ID: <20200617063621.vqtplv2l3nnaye22@google.com>
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
 <20200615120223.GC2694@willie-the-truck>
 <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
 <20200616173728.GC2129@willie-the-truck>
 <20200616174904.GA3403100@ubuntu-n2-xlarge-x86>
 <20200616175519.GD2129@willie-the-truck>
 <CAKwvOdm_0W5A+=C0uNfFfU2+wb-f4MA2B_P+15KWdGsBqfZ9rg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdm_0W5A+=C0uNfFfU2+wb-f4MA2B_P+15KWdGsBqfZ9rg@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rvqd9LWW;       spf=pass
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


On 2020-06-16, 'Nick Desaulniers' via Clang Built Linux wrote:
>On Tue, Jun 16, 2020 at 10:55 AM Will Deacon <will@kernel.org> wrote:
>>
>> On Tue, Jun 16, 2020 at 10:49:04AM -0700, Nathan Chancellor wrote:
>> > On Tue, Jun 16, 2020 at 06:37:28PM +0100, Will Deacon wrote:
>> > > On Mon, Jun 15, 2020 at 07:31:05AM -0700, Nathan Chancellor wrote:
>> > > > On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
>> > > > > On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
>> > > > > > ([AArch64] Fix BTI instruction emission) should fix this, it's been
>> > > > > > reviewed so should be merged shortly.
>> > > > >
>> > > > > Cheers, that's good to hear. Shall we have a guess at the clang release
>> > > > > that will get the fix, or just disable in-kernel BTI with clang for now?
>> > > > >
>> > > >
>> > > > This will be in clang 11 for sure. Tom, would it be too late to get this
>> > > > in to clang 10.0.1? If it is not, I can open a PR.
>> > >
>> > > Any update on this, please? I'd like to get the kernel fixed this week.
>> > >
>> > The AArch64 backend owner said it should be okay to add to 10.0.1:
>> > https://llvm.org/pr46327
>> >
>> > Tom just needs to pick it, I see no reason to believe that won't happen
>> > this week.
>>
>> Brill, then I'll tentatively queue the diff below...
>>
>> Thanks,
>>
>> Will
>>
>> --->8
>>
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index 31380da53689..4ae2419c14a8 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -1630,6 +1630,8 @@ config ARM64_BTI_KERNEL
>>         depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
>>         # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
>>         depends on !CC_IS_GCC || GCC_VERSION >= 100100
>> +       # https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
>> +       depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
>>         depends on !(CC_IS_CLANG && GCOV_KERNEL)
>>         depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>>         help
>
>That should be fine.
>Acked-by: Nick Desaulniers <ndesaulniers@google.com>

100001 is fine.

Tom has merged it into release/10.x
https://github.com/llvm/llvm-project/commit/bf89c5aeb8915d488fa1c790e1b237b62a49c01f

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200617063621.vqtplv2l3nnaye22%40google.com.
