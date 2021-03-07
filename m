Return-Path: <clang-built-linux+bncBCS7XUWOUULBBP7GSGBAMGQEX3SGVGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE8C32FF46
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Mar 2021 07:31:29 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id a20sf4525450otd.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Mar 2021 22:31:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615098688; cv=pass;
        d=google.com; s=arc-20160816;
        b=NRoFnmRDqe801sPGRFj2mlYNky8ejoyRkM3oyf5echW2RWUV9u/360plzmnRv3puUl
         rU16owvj9+g8MI7sS8ze4QajyYlu+uYOfOf76UNEYXsTapHRtcUSlFT7yoLl0h3I3flp
         +GwoeeVroFU9hyT0P//VQB8WHuJeGxtpkSpAwQyJBtBcPRYd43YXecEPC9zkTObHxyv/
         fqVMz/fvLtZ8rOForZV4UYu254n7Z7dL+cMG0JrrF00ruY6hxpkTSsQVrtuhDo+MSeTP
         qCjACSrh6ws9RZv91g2rDU1tlxd7ZSPHfQ2I0/JEay/RiXn8SNhTVPmnCGx2sOn2E3sI
         cfmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3dkZQ/JpaLPKj+kMRYWdZKKiDNFtZKPbaWHSD7E8EpQ=;
        b=FOKBPtZ7Ln69N0SeDsAYN1SDzbnv39hGbStaf+u6hUSKY6wXhgwv1mmqQCNMpieN01
         7sTo5pfLqPEjYGBFEvJxZJ7tXtWiz3vvVXSDFPjZz6K7lYs3HLusWdkh1Vz3cTy/ouQk
         HtHhutdv3Ksr+YzX7A4ADDYvSFV0/xpxx5cLyqXHk0qYTTskrpf7kwOtvAruOksoDboi
         M1+85c+9QNhUQGrU9PzGl75Biy7SWH7/ui7HRXYAjbOqmSyb8ubCAtqtI7MvIgUJp4qj
         Nzkm6UW4Ezt5ZOMKcZhPpqwebKwDtGWWJSVrbfv6xcNeEBtQAJUR/sSx5Rs+CVtJO42Z
         16xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B8lJWYRs;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3dkZQ/JpaLPKj+kMRYWdZKKiDNFtZKPbaWHSD7E8EpQ=;
        b=ok95frUFEbNT8fkYeFwu31jPVrDAnoKmZ4oVW9ArF3B2UlC9/IsPUarjhFdwIzjUX7
         DdGeTVCSsPI+c1drBuDk0/fJ/jp27aimjfK36zD9keaAZsjeKac5mqW+nPu0o2FwHohD
         ZDGJlCatK1BSpUVXjZr0CXMFz1wiudmJ6zJMckURIFzdU18CfvhV/5kwIcX+8khua1Sm
         4aGdYifhtfURehAaoXkX9e4Tia8AsUyLRl6VDhiDXmVvJZEoO1+KkZL72kO3TgStu8Jd
         N6t8QBQeMgrjoogLt8hdNo++viX85wUWb33eWRl+2DXxVk/M2rzv2FESc6aov7FxbcUw
         p8kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3dkZQ/JpaLPKj+kMRYWdZKKiDNFtZKPbaWHSD7E8EpQ=;
        b=cYb4mp7o4BSv2UYKRDwcuogoTnOlmMHIQ4xq8gNaiBBGcDrxZ3fWsao2oKSMlMdr4k
         ePlUH972MfAolqtJF1k1YK+m2DuHbDjG+jrIa2sO7lAv2h1Ys3+h5brmwwWtitPOAhSS
         MsWfrXju/zao7VU758TLxduadLlSersDQOUl6BD9u+aMywVpaun5O6ytk/Dz0NC4+21G
         dnbVEWcB1zzJhlbyG8lFVTkMv3UHgfWZagN3SbnbHZcsGGP78DL/gerkTgVSIMo7kRbI
         sMDCaZDAn6JTyKeJcungN43+qcEOiU8e3QonyG+FVSdWko6VMld8RJIXQEJ51dfKmLLP
         1EUg==
X-Gm-Message-State: AOAM5302K21VTXDUAoF8zVCMepUrtkR/lrL8KBMNpm3tTfsqmTasKEC5
	VAItuPvkjXGh4zfmBpnxb1M=
X-Google-Smtp-Source: ABdhPJxXnhDw4lLa7Q8tgDQSSbwhGP/a11nTTRnnmoZ8HnyKjuwlpHla5zV6C9PwzjygfQkfNJY4Sg==
X-Received: by 2002:aca:5e85:: with SMTP id s127mr12413400oib.67.1615098687950;
        Sat, 06 Mar 2021 22:31:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4996:: with SMTP id w144ls577182oia.3.gmail; Sat, 06 Mar
 2021 22:31:27 -0800 (PST)
X-Received: by 2002:a05:6808:5c9:: with SMTP id d9mr13002344oij.146.1615098687652;
        Sat, 06 Mar 2021 22:31:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615098687; cv=none;
        d=google.com; s=arc-20160816;
        b=NWjkmgDt7R8QCEtaXwAsMA384iYs17WnMJsT9wLqmxh9uK/uwushBe2tit9fdqwcwH
         b0eamsA+N8om8d74fxey2Xa9F8MBac9uY7RcLzE6Vy36t7GR+SYT91I9BDwfMvmSMXJT
         T9CQNiiYwKzy884oGCVf9nB6GF4GN85rDdKAsXC1FlGlUZnsf1ygaWDQaqdG+5FHzHjE
         z9wFwrJHubk7XQwi8epheL1nn7bsaXimfOkDHgLedIdv9tkWs4L2ZdQu34f+vJjpzK2i
         TU1XXhNt1+DoUWPgabWi1nYWZvxl5CHtRh/zmQ1duzbLguryCWcunnT5KMoHUXkqackh
         gv4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lgTVaBNy62FaQXG4T7xAtsLpQb7SJOUo67w7wxLxPEA=;
        b=hohIkLtM4MXYhPpgMRFWxIpSwop192FFs5gVFQba8PSMaroex95DJ9+aohOsE4fVxl
         P1cJ5d0GsFvehpuPRBcVYSedP4fP9kDlMDOVsjIM2OzvadhlhrpYfqxTDOwVbIJZZNRO
         uVwnT5LFBcJZqpCCSCj6AZZxEFcoZeFdUf4z6/rbIZBGruzCvMYGHIlm9gWRgkly3z41
         4YpJDR0N4NNi2xHzEQet2iQxC98c7YY0Iks17cziSP9d440IYIBmkUjlDVpj/OjbOM9H
         HUapYA3kJL0wJ4Fj1xnepoEkXUpKmNDMyZXsyVn7VSe39Wq36oMvVUw2cuJU9wtYvvt2
         J7BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B8lJWYRs;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id w1si314391ott.4.2021.03.06.22.31.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Mar 2021 22:31:27 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id ba1so3398735plb.1
        for <clang-built-linux@googlegroups.com>; Sat, 06 Mar 2021 22:31:27 -0800 (PST)
X-Received: by 2002:a17:902:ead5:b029:e5:bd04:bf48 with SMTP id
 p21-20020a170902ead5b02900e5bd04bf48mr16013637pld.38.1615098686849; Sat, 06
 Mar 2021 22:31:26 -0800 (PST)
MIME-Version: 1.0
References: <20210307051433.2756645-1-maskray@google.com> <20210307062336.GD29191@gate.crashing.org>
In-Reply-To: <20210307062336.GD29191@gate.crashing.org>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Sat, 6 Mar 2021 22:31:15 -0800
Message-ID: <CAFP8O3L91xzZtTQ3gDzpLE=-FvgM3ot5oaBK6jGUZbeT7Pg-RA@mail.gmail.com>
Subject: Re: [PATCH] Replace __toc_start + 0x8000 with .TOC.
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Alexey Kardashevskiy <aik@ozlabs.ru>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=B8lJWYRs;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::636
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Sat, Mar 6, 2021 at 10:25 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> Hi!
>
> On Sat, Mar 06, 2021 at 09:14:33PM -0800, Fangrui Song wrote:
> > TOC relocations are like GOT relocations on other architectures.
> > However, unlike other architectures, GNU ld's ppc64 port defines .TOC.
> > relative to the .got output section instead of the linker synthesized
> > .got input section. LLD defines .TOC. as the .got input section plus
> > 0x8000. When CONFIG_PPC_OF_BOOT_TRAMPOLINE=y,
> > arch/powerpc/kernel/prom_init.o is built, and LLD computed .TOC. can be
> > different from __toc_start defined by the linker script.
> >
> > Simplify kernel_toc_addr with asm label .TOC. so that we can get rid of
> > __toc_start.
> >
> > With this change, powernv_defconfig with CONFIG_PPC_OF_BOOT_TRAMPOLINE=y
> > is bootable with LLD. There is still an untriaged issue with Alexey's
> > configuration.
>
> Do you have any explanation why this *does* work, while the original
> doesn't?  Some explanation that says *what* is wrong.  To me it doesn't
> look like the kernel script is.
>
>
> Segher

The kernel code probably wants to access .TOC. (the TOC base symbol)
via __toc_start+0x8000.
If the kernel understood TOC base is different from the linker
understood TOC base (.TOC.), there should be a problem.
By using .TOC. in the kernel code, the two concepts are guaranteed to match.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3L91xzZtTQ3gDzpLE%3D-FvgM3ot5oaBK6jGUZbeT7Pg-RA%40mail.gmail.com.
