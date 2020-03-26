Return-Path: <clang-built-linux+bncBCLI747UVAFRBHFJ6TZQKGQEWKL5SWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 84904194966
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 21:46:21 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id g8sf5925247pgr.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 13:46:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585255580; cv=pass;
        d=google.com; s=arc-20160816;
        b=K9/NlqSIC/QV2TZzTs7x/7ZauRREQgXVA9g5vYVXUKVvQ/66muaBsS3gAWzdZVXfEo
         xPQlWIc12bZh5kO1frHXqjUvux9t7xivEvxekBJiEuX2A7uGT1nYM3IjXBgXP38oJV/r
         v8EmpmG7uMZFs3jiBawnXtuhm6QPiNwaqQ1EpiDFM5bg8q0eqcngTHQH7zvyK7rx5a92
         XkSLTzOcCub7sPp+eGodcqLk4k1NyvdE2r1cRHraAu/kkR44ww4dUTtOJyvwlDFxL6C4
         Z8Elmv7u7HdCUYDGTSrnvYGfiyYKFcTzE8JNDBeidqbWV8GoVI6K/2aetwOIaTLW/k39
         FD+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=g9oQJAisor/Zr7bwpN1t9gg+o/AhCl2J72SvdJq8jUY=;
        b=RI80VkUyl3ZAK/TQDFKvzM6E+lfOEVFtiag0IsvXgf73KNXIUn9y2gZFvAJb1YPaWt
         wE9K8UljZGVVNIVwXmNagUk+DlsJzuK+rZsTbn2VXtBevEgpNbWOiCxjwEg+avoWM/VP
         2uyZkhK4WnLUHupHurQkdoWcrcl1mQdd8nD1po13sNvz2j79ZAatG4j//FU+XSx2RsiO
         8DVpzLL+KvVfwR1A6jFiey/a0U9d8+c1uNd3a4EdgLWMq2B1+I+8Lo+ehDmIZKuNdtEN
         PZqYNvDLalyQhyRaPJMSQMphAEb4Ez/fDHoWESrzjigBlGOzusZaX0Ydg4FvnNyb3yz0
         o22g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=GBtBK3BM;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g9oQJAisor/Zr7bwpN1t9gg+o/AhCl2J72SvdJq8jUY=;
        b=XvvuwvYjSj++xakC4Sji1n+YF2/OzL0pxSX8YdZ1XSg4+WgpgPZgqJMerxDtD69rUb
         /EVS6it1VPeYgb1NjsRSc+TWJF/D8Bzi/bzr0IMPhdeEXS3JZ6wYvrq6Zt6xa1xqZfSu
         LIgZoUFnXw/HuOAWq6GgWj/iZ3s/r6Lq9QMKy7werOqRrOxrV2MUk5YbplsH0HvHxykl
         MLOKwDO0TCZg5AVZ/uc2mDLynrmbcOr/dsu2umrKoIVbFQAA0lNmuzRTiO9DjNPCFiPg
         4SsCUlY6mmVFRBs/nAd60UeZG0YW0ThbjOzgXEMnnEwJS7AZkguMhm4CozQ9BmmCjUjY
         YQww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g9oQJAisor/Zr7bwpN1t9gg+o/AhCl2J72SvdJq8jUY=;
        b=sABVegX9Zu6tMXWDS08IfeJyM3JidjiRQCF8CYpeGhvn5OPubUj7KJpcxgNlNSdYjP
         uHbB2V+zQvlLTeBjzsBtIH9eP5eWBs94jQHtPiPRrllRy3Zg61WmyGu0KsaQGQG9hBKz
         e3D7rS1+RCfjkHRvnecIckWi+Ib58FCGL5S2TugQyDOkmNVdklkDOqVP0CF8zv+ycIcS
         +W9wSRAzYf/P3jEjaLYoC+YAgbTJeyRNZAiiqpQkuG9iReU49FxUDN3XfjYOobzlju0h
         wJ8TQ8NBmOp9eViLLmKnu5Ryb5Q8Oky0Qzr0+BPlGc+uUZiGaNXiserkbxOAFna5x++Z
         YYPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1sAfUJPE1vBh5IELmZ5QCN1f7ltXx3itWHEQOuezI/p3aNKT3W
	VMEFJ0bKWFyIsa7uod5p2pI=
X-Google-Smtp-Source: ADFU+vtqjsS4vEUvVXFfY2CyB0fNw40b/jqLuNoQKDQChiSkSQjllkBcm6KnnfSTi4KoYg0bm/GdiQ==
X-Received: by 2002:a17:902:8a85:: with SMTP id p5mr10314195plo.154.1585255580193;
        Thu, 26 Mar 2020 13:46:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:34cb:: with SMTP id b194ls4405270pga.1.gmail; Thu, 26
 Mar 2020 13:46:19 -0700 (PDT)
X-Received: by 2002:aa7:9a92:: with SMTP id w18mr10767300pfi.95.1585255579725;
        Thu, 26 Mar 2020 13:46:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585255579; cv=none;
        d=google.com; s=arc-20160816;
        b=yvi0cytzT9SyJFwyKLP0owVKsxmZZTSY1biXVdoPRHJMgNJBTjMYFmMZ1BJJ4raTEJ
         HHIWomtbgUqoXMS3HqX8zkjB8766hBjloJGYv42q6UtnKB/+Gl1b7+85llCmJQ0JWucn
         7bmeLa/n2FDkTcuNZtOxVx+CJqBJ44kwUgXl0SiPWhVtpzrROdbKsmAWYKoDxpPqEzC8
         cJ58++H520KJYwPCmN/oFK4GgDGq3GUSOtu9sewn4qO7WXcoXwI+jVEUvSxofKkKIy6q
         GoBOOkxI2L4b9GOxqZu8SP8P+NnzslMihgV/KKL6tP87X0ZPV2X7AXG6zhSiSEnbiHPR
         EExA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AcnX8OKGHBQFeBMw5oxGGMvUEnc+2sPhE/QviE8v/wo=;
        b=AkFWVcwbQ/OmKf+aO2CK7EbJWIEiQt6bR4GMGnEAqOlPTxlO56XwaK0F05ptyLsBCx
         qFvmze2VlJY7Q8rNp6uNNGZHJ3x2ycwBgbEGr5w1aYFOvzGZ6PpbtOm/cTOylHTZMsAF
         EtS5NWEQXg92V50/sxsa4sOUC3m8YKaPbHz5+16KyBg4JxOT/JXLVxPaR3wTrlPw5otG
         w6VPBsoX846KPmSUJyUe8noeYtXyNqYN6RaReg5LBtF5TcQoz1sPGqQ55phBPj4pF8bA
         ie8CRm97Bz6xRHT0q3wNfsbr/acWiIbNUp2a+8yQkaFBnYSeELIiilbAOevL0qvdrFbz
         3V4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=GBtBK3BM;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id y1si290244pjv.2.2020.03.26.13.46.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 26 Mar 2020 13:46:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 75b3adb4
	for <clang-built-linux@googlegroups.com>;
	Thu, 26 Mar 2020 20:38:51 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 26b993cb (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Thu, 26 Mar 2020 20:38:50 +0000 (UTC)
Received: by mail-io1-f47.google.com with SMTP id k9so7613520iov.7
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 13:46:16 -0700 (PDT)
X-Received: by 2002:a02:2714:: with SMTP id g20mr9513089jaa.95.1585255574785;
 Thu, 26 Mar 2020 13:46:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200326080104.27286-1-masahiroy@kernel.org> <CAHmME9pnAvgErYkcvvdakvfMY8ZGKfwHHNYzpVtJ913Tgp16CQ@mail.gmail.com>
 <20200326092213.GA100918@gmail.com> <CAK7LNAQ7-wpm+g=cXeJ01vGrO1nVjfP-ornKm=SXoDEn4x+DjQ@mail.gmail.com>
In-Reply-To: <CAK7LNAQ7-wpm+g=cXeJ01vGrO1nVjfP-ornKm=SXoDEn4x+DjQ@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Thu, 26 Mar 2020 14:46:03 -0600
X-Gmail-Original-Message-ID: <CAHmME9qnWWYV+eWVmx2yoADB9oecZKj=UgLkdSHe_=MnxedtSQ@mail.gmail.com>
Message-ID: <CAHmME9qnWWYV+eWVmx2yoADB9oecZKj=UgLkdSHe_=MnxedtSQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/16] x86, crypto: remove always-defined CONFIG_AS_*
 and cosolidate Kconfig/Makefiles
To: Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>
Cc: Ingo Molnar <mingo@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, "H . Peter Anvin" <hpa@zytor.com>, 
	X86 ML <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, 
	"David S. Miller" <davem@davemloft.net>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Ingo Molnar <mingo@redhat.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
	Jim Kukunas <james.t.kukunas@linux.intel.com>, Jonathan Corbet <corbet@lwn.net>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, NeilBrown <neilb@suse.de>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, Yuanhan Liu <yuanhan.liu@linux.intel.com>, 
	dri-devel <dri-devel@lists.freedesktop.org>, intel-gfx@lists.freedesktop.org, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=GBtBK3BM;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

On Thu, Mar 26, 2020 at 2:44 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> I collected more Reviewed-by and Acked-by,
> then pushed this series to
>
> git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git
> kbuild-asinstr

But not the version of the penultimate patch that Nick ack'd....

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9qnWWYV%2BeWVmx2yoADB9oecZKj%3DUgLkdSHe_%3DMnxedtSQ%40mail.gmail.com.
