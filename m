Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCPB2OCAMGQEFCBP2UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 5528D376167
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 May 2021 09:47:23 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id t2-20020a6344420000b02901fc26d75405sf4839848pgk.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 May 2021 00:47:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620373641; cv=pass;
        d=google.com; s=arc-20160816;
        b=NmrE+21YSC+XveWRbqEGqS9QUj5Dfg1STtcBUTswgV+QIUBAXt7cQYAXluaNQ1v9ep
         clITKmsd1YrdB356JZtvpqlykpX1aCi6fSbztxQy3lq4vV3b6cf7IYmRRQAvZbZ0j8KP
         apLS7JN8tEBfjp3bZYxzpbnYbFlghirLEDKr88sTh+1PNn9A8oQxhwt/AwxN/th6YUqX
         vSzlJzBRCWfOzZc3DFoKeixzFV0EtVgOSNyIHvWLXNQy4NNLfTFgxRfiYszqIipJkWEI
         EvolvIacFaHCjg3u1WcMUyT6mSVu9AQ1aPizoOktgUAdqYUo3rU7wGURKNO5TTAi3397
         DRcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1Ta04HSrQo/yCEGdBBNadYC0ph6YV4K6baJ9TAgvKac=;
        b=SJ4OtwXGYeyb9GA2OkLzV/nRNZcspNpg8YiBtqJ6JOUPfuE7qTwE2yhnGDdrBI0jrO
         5J9ye3ymBDcbjDw8UOj18lwiouDxdN406D9jSk0DBmt+qi+THrIzbi3PEDghTovrkCn/
         S5p6P7vAK5cj06v8QJK8EsbJeA9EOHWdkTg7OcDv9o8gbLrfgxoXKjGFAHPUgbLDbuGN
         W2tBPZrgoq9NdFSwZeAOT/soeN56gam3WNKZUD++dbAzuvzt6BYh2PKLra84N1FNO3zX
         GuMZjZwEg2CYs8bxkhjjCx1Sc5VFqs6UCzAXqBMpyGlaHiCxTBpbgD23AOEub12cPZCN
         PKig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VqiXPuGj;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1Ta04HSrQo/yCEGdBBNadYC0ph6YV4K6baJ9TAgvKac=;
        b=jGa/6M8Yr4XIBmuLjW5sVYUj0519fWGtCS8z2Dlr1vUCToFX9WiO7z2mtgYuqA/luN
         eOosG+yg2IgSSVKPv4Y3tLvyk9ZrDYIVigGoo3kFRwqwS97U1H0MdsWRQZSib44T5Hp/
         p4hX4JC1awn6Chfq+o66mkEs3hLxb8nOsSL0ZxpCCOs76+bDgDu1bXja47D5SNL0YlSh
         Dgt1xPpD9Lv8F7lI/VPe8YL7skDgZUSPIcSADpuSr8VhZFcQJhscl0ICpX+Moxt0wzHn
         37I/sIs3xrWUXMIeqRhmTs4M1g6+w6wlognK/JcRuHakoecfFx6YAObvjiK7n2iVGncs
         7iUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1Ta04HSrQo/yCEGdBBNadYC0ph6YV4K6baJ9TAgvKac=;
        b=sz3GqZ527lQEphT3ftPChsz8wvBvRxP7w+W022mEFU9X1lO3Jb0uUBPkgEdQAUKERB
         7VOkg5HKKjxKPmy1gJHb6HWx39m0aRQy1/OQQ2CoOrGjAmnfYiZHB1wyxmkSmJaalvQB
         y8QRKgWYdj9HFghAlk6dhhe+OcQgSAqPshErZvBLyKCa4EGXiwnyMw6nlJT2cVVnmz4h
         w4+/ye/aeEVe1ex5hPHZfAEtyNLYJb25hcIxFmrsRx7R0mo1dtK0GeJXMNSelA2uLSow
         r50f5EOhcPhQOr7M3apGp3siiSpCxJSRHG7biuEwMJrBq7VzQYgma9MyOowMRgt4zN7A
         kT1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LsmDZUsMcQzCPCYluKVuSeSJP2wAjek23pc9wnVVeodZEuipc
	rcBQoTJtIjO8+evQO3O+BwE=
X-Google-Smtp-Source: ABdhPJxBohjBucrsALYWwS1rF/2IOXPRdeCfz7a6b325XtYq0ZigIFbSer9wlBVJryW0iu1IORhCaQ==
X-Received: by 2002:a17:902:fe94:b029:ee:ba90:a27a with SMTP id x20-20020a170902fe94b02900eeba90a27amr8692205plm.53.1620373641653;
        Fri, 07 May 2021 00:47:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b185:: with SMTP id s5ls1172150plr.3.gmail; Fri, 07
 May 2021 00:47:21 -0700 (PDT)
X-Received: by 2002:a17:90a:4108:: with SMTP id u8mr9204331pjf.126.1620373641176;
        Fri, 07 May 2021 00:47:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620373641; cv=none;
        d=google.com; s=arc-20160816;
        b=zUEQiTY7eQRO8Pcc2k0kpo76ljueZSPy4uZ6rXs/g6j4xSp0viDHhMaL52N6vsecs8
         aUWT9XZJFHBfj0rpGSovTJAxPPOgZXMICE7+EBo0p0exGO4mRTY1pTHNc9ZommPiJzRj
         O1iW5+xzXtY5KMF0ut1UOm2HyFxjtLMW2syS0oAq/cuUzZL3pkhAcnUcqY6chdjtjS+p
         AJe3zN21QR7QNEYiLgGXNM9Ywlhoj5+TG7JUuAVOKxqUlyCnAtidt/D9vmD/CeFqPznu
         N2XXO6JwzrBL7fudRx8ilBKOrOvKc45ZgAaph/3UW7E1Nd3xB5lZi/DaxFBljU3Lu8CK
         D1Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=miNmvXCQBlAcNixcN0wDL80FvkG9B7eNHIPJbTGHnzg=;
        b=BIKkVGK8UMWvjujt4RW5SoLVZyVlLFJbhh6kXj+kePuKaKhCfN7EVMok+VIQ6hrRSb
         qDvvqkErIU91f3aSktvAOe5lonlGs1QSPkpbpj2ZePBMIq63AsGekBG1AkMmUdac8B2s
         bkS47H0J4+RG13cktO5Cu+4gE+XxNA6E1oTcV1aoi+1EHTeR2wd8XbbCr1apSNpDruZ4
         AlPWFVrISvwZqNfK0XBFtpLKWVvl96Sp2I+yvrsMzBo8/k04rEb0w9e+DIJTCFX6dvW1
         UD+CVufG/kztVVD/QsHXZ+TypScEBylSasv+AqyrpBqQuaBhv6cpWx/DkM0uZ6bPooEI
         Mwzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VqiXPuGj;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p8si352784pls.1.2021.05.07.00.47.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 May 2021 00:47:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5350661132;
	Fri,  7 May 2021 07:47:18 +0000 (UTC)
Date: Fri, 7 May 2021 00:47:14 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Alexander Lobakin <alobakin@pm.me>
Cc: clang-built-linux@googlegroups.com, linux-mips@vger.kernel.org,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
	linux-arch@vger.kernel.org
Subject: Re: [BUG mips llvm] MIPS: malformed R_MIPS_{HI16,LO16} with LLVM
Message-ID: <YJTwglbUOb67r733@archlinux-ax161>
References: <20210109171058.497636-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210109171058.497636-1-alobakin@pm.me>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VqiXPuGj;       spf=pass
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

On Sat, Jan 09, 2021 at 05:11:18PM +0000, Alexander Lobakin wrote:
> Machine: MIPS32 R2 Big Endian (interAptiv (multi))
> 
> While testing MIPS with LLVM, I found a weird and very rare bug with
> MIPS relocs that LLVM emits into kernel modules. It happens on both
> 11.0.0 and latest git snapshot and applies, as I can see, only to
> references to static symbols.
> 
> When the kernel loads the module, it allocates a space for every
> section and then manually apply the relocations relative to the
> new address.
> 
> Let's say we have a function phy_probe() in drivers/net/phy/libphy.ko.
> It's static and referenced only in phy_register_driver(), where it's
> used to fill callback pointer in a structure.
> 
> The real function address after module loading is 0xc06c1444, that
> is observed in its ELF st_value field.
> There are two relocs related to this usage in phy_register_driver():
> 
> R_MIPS_HI16 refers to 0x3c010000
> R_MIPS_LO16 refers to 0x24339444
> 
> The address of .text is 0xc06b8000. So the destination is calculated
> as follows:
> 
> 0x00000000 from hi16;
> 0xffff9444 from lo16 (sign extend as it's always treated as signed);
> 0xc06b8000 from base.
> 
> = 0xc06b1444. The value is lower than the real phy_probe() address
> (0xc06c1444) by 0x10000 and is lower than the base address of
> module's .text, so it's 100% incorrect.
> 
> This results in:
> 
> [    2.204022] CPU 3 Unable to handle kernel paging request at virtual
> address c06b1444, epc == c06b1444, ra == 803f1090
> 
> The correct instructions should be:
> 
> R_MIPS_HI16 0x3c010001
> R_MIPS_LO16 0x24339444
> 
> so there'll be 0x00010000 from hi16.
> 
> I tried to catch those bugs in arch/mips/kernel/module.c (by checking
> if the destination is lower than the base address, which should never
> happen), and seems like I have only 3 such places in libphy.ko (and
> one in nf_tables.ko).
> I don't think it should be handled somehow in mentioned source code
> as it would look rather ugly and may break kernels build with GNU
> stack, which seems to not produce such bad codes.
> 
> If I should report this to any other resources, please let me know.
> I chose clang-built-linux and LKML as it may not happen with userland
> (didn't tried to catch).
> 
> Thanks,
> Al
> 

Hi Alexander,

Doubling back around to this as I was browsing through the LLVM 12.0.1
blockers on LLVM's bug tracker and I noticed a commit that could resolve
this? It refers to the same relocations that you reference here.

https://bugs.llvm.org/show_bug.cgi?id=49821

http://github.com/llvm/llvm-project/commit/7e83a7f1fdfcc2edde61f0a535f9d7a56f531db9

I think that Debian's apt.llvm.org repository should have a build
available with that commit in it. Otherwise, building it from source is
not too complicated with my script:

https://github.com/ClangBuiltLinux/tc-build

$ ./build-llvm.py --build-stage1-only --install-stage1-only --projects "clang;lld" --targets "Mips;X86"

would get you a working toolchain relatively quickly.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJTwglbUOb67r733%40archlinux-ax161.
