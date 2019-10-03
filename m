Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBB7A3DWAKGQE4IH3AAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id A2459CAB75
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Oct 2019 19:29:43 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id k67sf863780wmf.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Oct 2019 10:29:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570123783; cv=pass;
        d=google.com; s=arc-20160816;
        b=JLLMfVmiy0yuQEHlgHLrM0mjkwW2kuuDHZr6TFlK5MgrerChEVy4m3/bqjVnOtPBUC
         MVOcG3w7zvj25fVYVNFOqcvSW1v8o+6GUObHWaKJm1Q0jCK64bnZGJbDbUxe3zjqIhww
         d5k3kZ7CluXnEBiKG6yKzS6aoOKEyv9pQse5Qrdr4O4ssUBOMBrWyz99dqyGjq0GayTD
         d8nXzbXtuiIpmuEUuhOVoupEHhfwTtiv9XGYf7e8qtSslRdUo8F1qj1haryYvwfr2TgY
         49gfRQgt8pm12Dn5qeOH59RjJkPBoMHKjL7IMPy/vJW4LVPxHkgQMDA1xRHB+jBpaxUW
         t8vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=zCahU1Gjuh7aFVAPuwUrXZJE4FngalvgX54V9wH4Egs=;
        b=C1Gfir+SpRSxrHamXwmdoAT4CTlpB735uUltChVLocoFxmNR2pf4RRj1G1qsSZIx6H
         VocRcjGEJH5yBHVdQZ3PVypE2wEooBVPBZxkU5xDZfcYDN4nEISoogGdhlKX1IsXcq/A
         Lo+tCeQN4hkZZ3yUaJuIhyM34Bu+Fp4hv/K9TeAhBi+lgyvee+L9STTdiHvLYaFQ3oFn
         6xhB8zTtKS/UXlaDvM+YnEvZ6xY4MJRaUdxWoqHDhFeZc2ukohky4li3RB4romPTHRA+
         iBo31vWTlEcuQo1+ci1G+JDV5WCurhGlrU7PdDCkDKJvUfEghw7Q1XmFnnlwZdWr2wjr
         q9uQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=RPXZgCae;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zCahU1Gjuh7aFVAPuwUrXZJE4FngalvgX54V9wH4Egs=;
        b=WxxwIqSjCr1MGZ8bobJsTQ7dQPrGVAbs/OhLnpF3Rp4WnSSK/NRQ6dPCYuJt2iNi8O
         CefDsn89p4VatiT4Z8gNOsgvxNaT5wvFfCslHDHNAI83BpeZl2L+0yLAwis73v+bpFQU
         cDabRpvQpZhJbWLw/VD2hjdRUYOOssD8i+n6MpyamE0SdQmtbChyiGaSPCN1appFLnmy
         CVL0owpV+3l5Uay9+H+qIXmSJbfIx4c5TmkViLjzZuujFwxQWkObvYzQjy9zW7hX7eKb
         Q2OXYGhsGBwcvIl/23koKio56GwR2Y2+lnNxzthWLIJP7qpsH6z2auRYbeatecYguRzI
         V6hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zCahU1Gjuh7aFVAPuwUrXZJE4FngalvgX54V9wH4Egs=;
        b=PQJxGP2jhdgeu66ej1WdPkJ/Tnr4NIPcetdYQvtk3u6zyzor4O7M+j+t1Nig/7Q6hy
         UjmwpvS5RQKmgkY9zdzBMiYx+v+TocJcy7FM1QhEic147wipNqmfap7VkRSbppE0nudm
         otQ+HBLMAMY16z63o5QQ9Fa/knooDCVd7QcYXL9X4/HX3K/bMUMo/lcNOfhuouvhnEIW
         V+aWKc+B0mXVSJDm16N7Ft9x9E/Suo/DPkl6lyJb+39MEIGV/W7IbxoIg/i+/Tcul9P9
         eZLWw5Ba7w8MqYgzlBCaxIRCVYGpI0JQsoD88tG6mNhFBOAGlg2Hf8avrPj6hfX1PW7b
         9jCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUToAoLu3qls+pJ4mHIT3tShCrh3FBMDb3zKK+zWpaosJdezQ8z
	l0l4s1gAoFejm7VlD1OjvRM=
X-Google-Smtp-Source: APXvYqyKjUkc0TB/kHq9gT8Uh5qiMlG3bQqOH/hfW+54LxRQZA4BoA7hCotBiv4pB0XLPHVLPpFDXQ==
X-Received: by 2002:adf:fec9:: with SMTP id q9mr8366833wrs.239.1570123783289;
        Thu, 03 Oct 2019 10:29:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9dc8:: with SMTP id g191ls227405wme.2.gmail; Thu, 03 Oct
 2019 10:29:42 -0700 (PDT)
X-Received: by 2002:a1c:a984:: with SMTP id s126mr8207616wme.26.1570123782630;
        Thu, 03 Oct 2019 10:29:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570123782; cv=none;
        d=google.com; s=arc-20160816;
        b=l624fYbdGDGyMa4fXTHvQWNUzfmQxyNOF7VfEitHr7kBcWwxpI8WLXteInoCugn0iO
         bhtb6GkQ2+0VuNhU5JhDNe6nq4J+Q/f+OQHLv8Dmu4yKgKQdYjfstFTRb09In7f6EMn5
         V3/JPDfNVCuPEh1pnoXsCfL1GfmqW/MdXM8T2MQF6o3AQ7X4JOIsmwfc2lI/qYUtV6Sc
         ZDUhCca8QLO7sXZ9N7Z05lR8YpBzhlzB9mmD5lvIfO5hedUslVrkkA8Hfkp1DPliBjLk
         nR/rw970R3hxgtSFjHa3dcX6mrGgstJ2ENmB/GXmhsD67NluwLUfW8Ga/U6ivHDw18Ym
         vk8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8ZVEazC37+BdYsUUwYDYhErEg09v7WhRGEkqCbHO0ks=;
        b=vLx1Gsd+VmRQEZpfT5Z2iP6rDUxm2bveHYXIrIkrKTVHhSRzp0yk+QIts0k8uz59Sj
         BEMM9e0Z+1YyrWxY4DXy5vESBPaYZIFpDSwjubAC+DTJs6e2MJok6ko7+bMoqs5NIFcq
         7dvfiP0C0kDGRQ8mIATM7fz+vLbSz/nLF1nTZ2o6OboTDQHcPK2hcNS3HecSCpPQzSAe
         ejSnrKAuaQJWlujaB0+PWuf86TrEmBstltmtQSX2lw/0pzmvtzU7Iux6VvFARj8ds61p
         uw/RdOgaUF5V0hq0U4bdyUMm+IoTpa2rY1saRr1UFX1mFYjNQGtnnVS1u7q2+awqlzY8
         6Cbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=RPXZgCae;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id s194si486204wme.2.2019.10.03.10.29.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2019 10:29:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id y23so3652002lje.9
        for <clang-built-linux@googlegroups.com>; Thu, 03 Oct 2019 10:29:42 -0700 (PDT)
X-Received: by 2002:a2e:7e05:: with SMTP id z5mr7016135ljc.8.1570123781800;
        Thu, 03 Oct 2019 10:29:41 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id e19sm664074lja.8.2019.10.03.10.29.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2019 10:29:38 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id a22so3711023ljd.0
        for <clang-built-linux@googlegroups.com>; Thu, 03 Oct 2019 10:29:38 -0700 (PDT)
X-Received: by 2002:a2e:86d5:: with SMTP id n21mr6811909ljj.1.1570123777769;
 Thu, 03 Oct 2019 10:29:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190930112636.vx2qxo4hdysvxibl@willie-the-truck>
 <CAK7LNASQZ82KSOrQW7+Wq1vFDCg2__maBEAPMLqUDqZMLuj1rA@mail.gmail.com>
 <20190930121803.n34i63scet2ec7ll@willie-the-truck> <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
 <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck> <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck> <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk> <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk> <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <CAMuHMdWPhE1nNkmL1nj3vpQhB7fP3uDs2i_ZVi0Gf9qij4W2CA@mail.gmail.com>
 <CAHk-=wgFODvdFBHzgVf3JjoBz0z6LZhOm8xvMntsvOr66ASmZQ@mail.gmail.com>
 <CAK7LNARM2jVSdgCDJWDbvVxYLiUR_CFgTPg0nxzbCszSKcx+pg@mail.gmail.com>
 <CAHk-=wiMm3rN15WmiAqMHjC-pakL_b8qgWsPPri0+YLFORT-ZA@mail.gmail.com> <CAK7LNATSoOD0g=Aarui6Y26E_YB035NsaPpHxqtBNyw0K0UXVw@mail.gmail.com>
In-Reply-To: <CAK7LNATSoOD0g=Aarui6Y26E_YB035NsaPpHxqtBNyw0K0UXVw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 3 Oct 2019 10:29:21 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj9Dbom1x7qDfrXgNbjdFa_84bAUMdGigs4sELQQW28wg@mail.gmail.com>
Message-ID: <CAHk-=wj9Dbom1x7qDfrXgNbjdFa_84bAUMdGigs4sELQQW28wg@mail.gmail.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Russell King - ARM Linux admin <linux@armlinux.org.uk>, Will Deacon <will@kernel.org>, 
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Stefan Wahren <wahrenst@gmx.net>, Kees Cook <keescook@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=RPXZgCae;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Thu, Oct 3, 2019 at 10:24 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> I just want to annotate __always_inline for the case
> "2. code that if not inlined is somehow not correct."

Oh, I support that entirely - if only for documentation.

But I do *not* support the dismissal of the architecture maintainers
concerns about "does it work?" and apparently known compiler bugs.

> Again, not saying "use a macro".

Other people did, though.

And there seemed to be little balancing of the pain vs the gain. The
gain really isn't that obvious. If the code shrinks by a couple of kB,
is that good or bad? Maybe it is smaller, but is it _better_?

            Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwj9Dbom1x7qDfrXgNbjdFa_84bAUMdGigs4sELQQW28wg%40mail.gmail.com.
