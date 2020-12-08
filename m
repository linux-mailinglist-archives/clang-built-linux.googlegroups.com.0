Return-Path: <clang-built-linux+bncBAABBQELX37AKGQEWVZX7BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A262D2C46
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 14:55:14 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id f6sf1087681pgh.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 05:55:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607435713; cv=pass;
        d=google.com; s=arc-20160816;
        b=0NGZNA96qYpzKlo5QKeN2My8exqKt7B89mbqZ4HFEQYaoVcNnvUpEsbHvYSabeFIIz
         ehfsLuuC3NPjYV0N3rfENyZTVSuuAFM9DKNoPAdV3LnQO2dkDzPpwUILMmgA9EjivH/4
         cFhdWYMS3+c/std5f878xavvIKfWbl2Yyg2Ms9HUdPPyIzayQtjC/SBTNtBOjw5zoJ/1
         Yy8iIaAVPCbTz7LquGGYgPyfE1rk7AvSyQJne1E16g8sPQXq1QWPqRIp8QVKuJV3zU+5
         mSrRC3WL0qnBZBU8LsknPLZWWCtgiPF7ahxoL+bWkrsvRF5VXxA+jY0tZxSV1Kv2OTka
         Gd9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=if+wCTi9kSqj0c3HKY60HLAodrf5E+TyjfKzFqt+1aE=;
        b=Y1ZArfedOqtgEg1Pd99uE8cd00+LZomPQCTSY3hfbY+hAPSPBOg75F34/BJpoLiBDv
         x+c1jyjLKmM0hG9hT8KJ6TpGjTESoiP+sdu7zvP6ihAnnbXr6Bb65Vlb23eHcQADdyFa
         7tFNLcww4qSLmZqaQsOsA0iVYGhxvBZkLTjpUX3VpWJAnCOcfDK+3M4QXXDJTT+l3Njt
         ryY1nJ/yHt5lh7ALf6blWgdhUaB7ew7YTGVOTw6rOu0hWk1eBI6DsOzrkWILYQApZ8A3
         J1O29s1t7iZM+/c3YIsP04S3ae2eue/RFBFOwr0Bcg0Hzx/nSHreDKgehT+XRccCQViW
         VszQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=N6+VRiKj;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=if+wCTi9kSqj0c3HKY60HLAodrf5E+TyjfKzFqt+1aE=;
        b=Gx5vZW4OR3nIv9VekA2HyaFU5kWlJ8IlC/LEZea8FgtvkhrkosrHcWhBJQCd2eaQBp
         Yl1SjeByCPB9EZq3vW8QG4oFewO51AaQamYq1YcFAmQ4dBN6CvAaZvsa0I4po1imTB57
         KNL6fV+QIyx+ONSNOdNAy+tf8lrhed65xjaQ5Ds+LW2Hf2PKTfybNMjSMAIX00d+Umpy
         DgZIlwJR1j40UsLOnQ9S992Oek+rmc4kbGNIKB9NTZTIru6z5v9yG8js2VUDY0w4zwxs
         OljfJ3BraMvUyO0jmaZ4BjSEW0dGlEE9hmD9EnMCCrQg69lkzdCAIehgt1qV0zYpcBu0
         x4Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=if+wCTi9kSqj0c3HKY60HLAodrf5E+TyjfKzFqt+1aE=;
        b=OFw/peXyvhHtHKwtv1Et8HMHD5NOq2hlx3zjlvPoFKYnnKEO4VFBTPnEk+oEPcMO3t
         TsiNbzcqlzEu4QF2euxc4USnBTlNSw6IIirzpGcCnWwer6bd8V9zsoM4xNO1+YGoyjlY
         /seuNhMx2XEmrc7OWE7qq5IlTJO8dxhxFpnUAnqtXbqlWdzqFpwFqatUB5/+JiKYwbgA
         TfEU88rWSjhyH+auOCKPE16ynROBPVfI0pBHPxXW3JCOsDEZZ/XGwdmkID0Bz0gnK2pu
         pGCorILgcyzlp4t+6JCi/7pZh1ViUi99A/dGTG/ekdntCuWDaLwGvEN/XN69DqGvira1
         yuhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/bO/QpMsYmRcyVjY42oTf6rPxry3wTeimUmf6VjrGFNXJmWTS
	P6rfFr/jOrVWzuZYDhnj+kw=
X-Google-Smtp-Source: ABdhPJwvmQLOpiO6SilwCZKy6ivCFwao54UXwtAlO/WZWrw201nFX1pCjxQ2kB3A78CroUVy5DUzHA==
X-Received: by 2002:a17:902:a3ca:b029:da:df3c:91c8 with SMTP id q10-20020a170902a3cab02900dadf3c91c8mr15570087plb.41.1607435712768;
        Tue, 08 Dec 2020 05:55:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab83:: with SMTP id f3ls4071587plr.9.gmail; Tue, 08
 Dec 2020 05:55:12 -0800 (PST)
X-Received: by 2002:a17:90a:6287:: with SMTP id d7mr4426782pjj.80.1607435712218;
        Tue, 08 Dec 2020 05:55:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607435712; cv=none;
        d=google.com; s=arc-20160816;
        b=GEvRheD9KYtNyUVxcWcncgtDNhn3sy0f/j7tNvbyCOu8vN8z+KGW+A+RiTUqtG46mE
         yUP5H+BLhc4hszByOEZrUL9zAJzQd36ldFyHLNZRdK28/BZyI6oEzEBI9IZ6xST1dSi+
         uGX+irXbcScAVnlooQ8ljoQkCM5KfjTO7jwJPqG0CXI71PkZg5ZMUyCCMMrl9jLRIRiv
         8ggrORL6e2DqTyYPBb7PJoQvt07FKnLug9pwqj+NWTHNpPNN5KNp5ZaeyQngcPHTF5xD
         cLVlgqqASm7pZb6tHGDTjL0lsVLKkd+lnrDHJlxs2yc0lokhWj3Pt/VsveOooUblvD9H
         lqXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+d2pk3jQXo6hiaZFcbrJF3ShMylHr8LVRoqrMmrA6ws=;
        b=F6u7bHmeG8mEvpsbuQkjPAa653BIqMp6H2+yispdQXumeZqDIs27UdUaARIqZOatjC
         Kk9wYXx1WvQGt3ShGDa3Y2ErYELkvHc8TgJFLny6QBDTKou4Wf+cq2Mh7EDXBL73zvNp
         XTxm1lkMs5KoIf384VHqxGXfsdMl/JaFaaKqT0o5j4FeRU1o11xpKBs3dhZz545+x/O0
         3GGppOeQFLUllX/6T5acGly3EYHNxcpgDgDrdkeAxbOj3ju8vRvA8dd/OiW65hmn7IFL
         BhnlmtxDIaDMo3ClKfRI6UNlPJBg4L0LXySdt6BwUTaq7ydcimt4oNZworvVzqT6v6tY
         eHXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=N6+VRiKj;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v8si1038283pgj.1.2020.12.08.05.55.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Dec 2020 05:55:12 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a1c:b4c4:: with SMTP id d187mr3984205wmf.38.1607435710266;
 Tue, 08 Dec 2020 05:55:10 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com> <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
In-Reply-To: <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 8 Dec 2020 14:54:28 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0AyciKoHzrgtaLxP9boo8WqZCe8YfPBzGPQ14PW_2KgQ@mail.gmail.com>
Message-ID: <CAK8P3a0AyciKoHzrgtaLxP9boo8WqZCe8YfPBzGPQ14PW_2KgQ@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=N6+VRiKj;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Dec 8, 2020 at 1:15 PM Arnd Bergmann <arnd@kernel.org> wrote:
> On Tue, Dec 1, 2020 at 10:37 PM 'Sami Tolvanen' via Clang Built Linux <clang-built-linux@googlegroups.com> wrote:
>
> - many builds complain about thousands of duplicate symbols in the kernel, e.g.
>   ld.lld: error: duplicate symbol: qrtr_endpoint_post
>  >>> defined in net/qrtr/qrtr.lto.o
>  >>> defined in net/qrtr/qrtr.o
>  ld.lld: error: duplicate symbol: init_module
>  >>> defined in crypto/842.lto.o
>  >>> defined in crypto/842.o
>  ld.lld: error: duplicate symbol: init_module
>  >>> defined in net/netfilter/nfnetlink_log.lto.o
>  >>> defined in net/netfilter/nfnetlink_log.o
>  ld.lld: error: duplicate symbol: vli_from_be64
>  >>> defined in crypto/ecc.lto.o
>  >>> defined in crypto/ecc.o
>  ld.lld: error: duplicate symbol: __mod_of__plldig_clk_id_device_table
>  >>> defined in drivers/clk/clk-plldig.lto.o
>  >>> defined in drivers/clk/clk-plldig.o

A small update here: I see this behavior with every single module
build, including 'tinyconfig' with one module enabled, and 'defconfig'.

I tuned the randconfig setting using KCONFIG_PROBABILITY=2:2:1
now, which only enables a few symbols. With this I see faster build
times (obvioulsy), aroudn 30 seconds per kernel, and all small builds
with CONFIG_MODULES disabled so far succeed.
It appears that the problems I saw originally only happen for larger
configurations, or possibly a combination of Kconfig options that don't
happen that often on randconfig builds with low
KCONFIG_PROBABILITY.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0AyciKoHzrgtaLxP9boo8WqZCe8YfPBzGPQ14PW_2KgQ%40mail.gmail.com.
