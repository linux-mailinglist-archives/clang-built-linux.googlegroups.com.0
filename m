Return-Path: <clang-built-linux+bncBD52JJ7JXILRBD6BUPUQKGQESTE64II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBC967564
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 21:33:36 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id i73sf8517655ywa.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 12:33:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562960015; cv=pass;
        d=google.com; s=arc-20160816;
        b=JpytX5aP2TG8xavSX24mNiq9jGfNylUkNZnJwk/0aYHnBZtMGeLd/p/RJ5rJ8GNyg6
         Iwlq8qX9wdP6iIv9dGchMqijfku3MpVdQ8DPzYzFnJSTka26YNdSjXV4Jl4Xafuu2R1M
         duSCMdCgnzweO0XCl7vQoN1U/ukt8XtH0yYrd+Vml1cERjROIBxQxQgSNloYMt7PfnXl
         K1eii2GhvkNnakTGEUu0vU9t1Hj1t6AWReI9TLNzQaby6ngCsRneV4pgNqqjrj0xkVZh
         xE98pVsG7aDJhZ6lV3awO/saxQetaEmVVr9r3y2saK1z9LbMpoVOi8AghzwipoN4MJZ+
         Gl6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=8JO3rjAnDK/W6inQn9nu9UrP8Adm8LkjVHFTi/hVLt0=;
        b=u1Cv7P4LokOi/ntwgeSTo4c1HkPA/qrp86F0f9vToRWgR+UTtx1M1P3UVmB8B1gSK1
         9kKI7v8abUUFS2zCpxGVlWv0iKUwC+ilHwBaUmpGz8CFW8NbtSfWjR0NwC0RGsfdRG9D
         5acqFYBKMRiOGdpTxJ+GnI2aDGAPZJBMSqZ5bDtVodTZISoMrB4A+lw5DpAhROWp2xJ0
         XJTJyegky+XGye5SvTLy14goaU5nfoG8swW9AuFzCO+AJ8e5tC0rqwP3IfQby0Zb0r+d
         2OsRdAHZ+LwWxn+BHoFREnU1pC0x6eDHD2GTN0BpoLZ0WospYEOf+32UdBHP7B/FJ1W9
         BWkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E3d8vXKB;
       spf=pass (google.com: domain of 3juaoxqmkeeesffjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--pcc.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3juAoXQMKEeESFFJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--pcc.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8JO3rjAnDK/W6inQn9nu9UrP8Adm8LkjVHFTi/hVLt0=;
        b=hAB25tbhZCYgLoC2+8XgFIiXeF1k7UHZI4w7VOJGnHwwXejyLDiy8ZVTpRQFbTb4iw
         Emm4qyWGnh2gaBnpc/PtEGRaAIvecTIPLsU+b5tXC1L+fC3w3vWIDIFEEqyi3yCyi3Ll
         s7wQ+jN8swn1r1mfaiWMItCS3mYh1OXFzjonyIrRQFoVGcxfLkTwKbRCVbrGUrQ5NoiW
         7sUbKSnbz/zJAwy963HlhRUHQtQW+gAw1xsZAZ7MubWl6KaPiWnH+MxiUiacSgUzJhOA
         eoOU1t3sUFCghUMjNuv/lgM6sDveYqGQDZOB+o10Ndaa+4ca9Dd7UGVIesFQFAMHqrLL
         zn8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8JO3rjAnDK/W6inQn9nu9UrP8Adm8LkjVHFTi/hVLt0=;
        b=CchfBCbAzb2jQm6+/Hs/v5crAzcM//jU7kQTtvsLQDoHz2EJu+tpvLgD9GaONul+Jp
         vY6uFnLIM+JcGOeF95znpgGq3nWiTCVhBo/OkEGO2JXjtgNwu8FqlE2vjOFexq/fz09Z
         J6IUqfZ/4kGR8Mg5dei3mwEAH9P5IHm6nT25mVeFhAD8gNlb0/VdZlaaHYFtBeYaQEVl
         PogBjeAmdzogEAEM6Hro7A1fWeRPTmLWZOlWfLy4eYtupZlzPcJajMUWOMtjWvbUrRU/
         GLd5co0vddrGdgKgX4M1chjD5uX/QDuiYXZy3yO1HtYnZxO5EgNsTJ/sGM2bIPEnIRve
         HBkA==
X-Gm-Message-State: APjAAAWePlXcBqLNa9dBFQjWhBc51XIIJghS8FG7jcEYR4RFc9aXVj+H
	hrwrxUaC0auUtkI4i5j/ssw=
X-Google-Smtp-Source: APXvYqzi+LAxfSnuOu1nEx/7eETzD1ehbX3Ji2fCQF01/JJCxbClMR4LlsLAzDKD57/xQzqDP8TpDQ==
X-Received: by 2002:a5b:904:: with SMTP id a4mr2635187ybq.27.1562960015856;
        Fri, 12 Jul 2019 12:33:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:86c7:: with SMTP id y7ls1412500ybm.14.gmail; Fri, 12 Jul
 2019 12:33:35 -0700 (PDT)
X-Received: by 2002:a25:5c4:: with SMTP id 187mr8025410ybf.11.1562960015626;
        Fri, 12 Jul 2019 12:33:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562960015; cv=none;
        d=google.com; s=arc-20160816;
        b=q+ebzeglT3SCfPnYQMIGDJVnO9DmExMavZEnkMeR0VyClRaGgbJCf717Zb6fy8cqW9
         rXKs5yuIESGpQTuUg3Pv2dlrM8SzuJhwUgkOLyBBjSCTDku5QRAtNGodm18FhL41QmHA
         OqvabSmNg5tc38LcCMwFi2XidT00jWqqcj4warsNUykDOrz6xmkIKl2KoPeEGG/QMz4J
         6pvKki2Q5be5Ma4jSshsMnBJCCR/jRyU725cWES4RWyWoeuy1H7vv61t2LZKJ2tUaR5V
         PucUo3MtvNaH1Gia7YzVJeaqLDBD2bw6uiapia2rxCTUa8c0Qqp9s1h5vVwSaKkCRebF
         5UFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=WfKn+pO100GfFyUPcoCg/5BERsEevHMdaLHxZNiO0d8=;
        b=xtquyYytEB+3BhUu8FdymifNMMhLtRGyl5heCgNqvw3oMMzGL95SzdOlYLg4JjnukD
         XpOTdDzDgnQYvNURQ3isChNL3gdHSTHJrVhnqzZA4imssRhQynANNM/XxhbrSyivfrav
         1hjg7TrSoI9a7rXHOQnN5dAWpxRuUTVKoTvTNxs3faO0EIwz4jAdZxxi5TMqxUAcQJpk
         I1LAkI7V8pZ7oXy3XKez20APRrbJLKgmgifTIClyT5VfDyw7e2aZY8abx2tmHLwUO8oy
         bqRgZSEY6PTl28nCL7J7oawZKkrBl5n0Pc5yfhJcAvRRDyboOi5GUVbgTydZBeFHjShf
         7cZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E3d8vXKB;
       spf=pass (google.com: domain of 3juaoxqmkeeesffjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--pcc.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3juAoXQMKEeESFFJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--pcc.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id g15si550871ybq.0.2019.07.12.12.33.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 12:33:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3juaoxqmkeeesffjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--pcc.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id u21so6105225pfn.15
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 12:33:35 -0700 (PDT)
X-Received: by 2002:a63:f304:: with SMTP id l4mr12859734pgh.66.1562960014464;
 Fri, 12 Jul 2019 12:33:34 -0700 (PDT)
Date: Fri, 12 Jul 2019 12:33:25 -0700
In-Reply-To: <20190705080231.123522-1-pcc@google.com>
Message-Id: <20190712193326.173208-1-pcc@google.com>
Mime-Version: 1.0
References: <20190705080231.123522-1-pcc@google.com>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH v2] arm64: Add support for relocating the kernel with RELR
From: "'Peter Collingbourne' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pcc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=E3d8vXKB;       spf=pass
 (google.com: domain of 3juaoxqmkeeesffjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--pcc.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3juAoXQMKEeESFFJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--pcc.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Peter Collingbourne <pcc@google.com>
Reply-To: Peter Collingbourne <pcc@google.com>
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

Changes in v2:
- Reverted change to RELA processing
- Added more comments, as requested by Nick and Will
- Added a feature test for NM and OBJCOPY
- Made CONFIG_RELR=y the default if the tools support it

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190712193326.173208-1-pcc%40google.com.
