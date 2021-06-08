Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB7657WCQMGQEY2PMYSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4F039F7B2
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 15:22:09 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id a7-20020a5b00070000b02904ed415d9d84sf26708039ybp.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 06:22:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623158528; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hyjdg0I5Pl2m8FCGN+kao8AlIOIUYfeM63kwhZEXBnmye7mWpX8r5d8fidJ3yqfyk/
         2a2VP9XlxTyXnpUr5eK2JXZR6T5iuj5bVIyBQC4WnSR/PZVw9wN44dbKxPqLsyzGoLdh
         EOM1rMSIv530nJmoakiEqkgovEqZ3/Lrfgx31ewUTHchcamthKO3s0Aob0u9otKNknyF
         85AoZtoS9TluUIceCpuV1nLZ3+7uuvAgUXHpv6E/1iCsdYLD6aYZEjYOAQLxk1wKgyva
         GPDKhBCskMpyBPjtyQJ/dsIoIgd1lO7sSSyf8Oed/94UcSbGoad02WYt9LT8Lo1MKHEe
         POdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XEmJpFEnuLbiVMzdOLZhYKVsqHN+wCOmnRcWAUp8QV4=;
        b=LNcQciE5W9CpyoF3yBqe9bTRAskNC82t2TMYtRPz9jtaMaGY/slCu2+bUhO4uP1GFz
         nntXgOuOk38DvXkpXk0dZxLFL/pJgyZrnUZ9eZC4RycQdciVn/D5iy8K4OSCzNLtbWMS
         qBCQq1mTvZMPQIBszW4stZ4YtBY2H8YFIRvgRIX0HtSpilX3Aj6ilCxMEvND6w8iZrLX
         togvYEeGJEA52C7OID8WD3pBbetZEo1bFYJqyztroqYTUJaDffdy5i65CjCffXHn+jEQ
         6DdoUzUm8+EFw5c252zQhfh/HWINs1L7YISyMQLGzDpHXYkSjn1xHjJ8G8Vn2BZ2FbM9
         rzmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lyKsXvu9;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XEmJpFEnuLbiVMzdOLZhYKVsqHN+wCOmnRcWAUp8QV4=;
        b=IqGAnX+reZztyjM1bW61KdTFvpjh92yAqA04zg92eEWhOxsdhzgRASGjqT9GX7E5qa
         vTDNT3Xld9XTIGhJd2aadOnFdBiF8NQ7/jcH+lHSMczwBl0m+JQ7vh9PlSNuSzUjAECH
         A8JjbrKJcx+bG/sNKLmD7O/HRvNY4ibEUXfbxI2cqTNYCH2jdzlUq8h1w/3qJ8/WD+pd
         9Ev8FiYfXDaXgxCLEef00L4ycyCkn+yccUM8M1acR1xloZ0EmdMZ13UKWKEf3lF1M6OZ
         PqPOi9w+hFVfjasxkXuGQTd/mCrUJ+Y3g0T+HtOSKoShOafZxzWJlnyBRLo+NIBwS6jk
         QdxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XEmJpFEnuLbiVMzdOLZhYKVsqHN+wCOmnRcWAUp8QV4=;
        b=gaI+AkaMYQhF8KULmfoUunJ+JJN1KDnb55kyhsPObfzqvdikvL7qJ5q77t4lvcZ/DU
         +6ii9WQ8LpuHouMmci1qtU+yRWJvtrqown6xppS3eHJT4W2vegz5PdKycBdrWPW2SEcS
         3IbgrFGP4bNsG32dyF+r5dPWs5wn9exwMJLNPMu7vzF3mSjB02KnJvxhdbONqQxo1Z/Z
         rrBzF9K/8HTPAvkEYVQ+1hRSD/u+AOwX5uziOMjTN+AFCng2dAHTBzE3ZS02+Xl9Jtme
         Ft7lZtw3E16ESlb7rS3Oep/TmXfSQZ/ps03M7N1jt1Y5TUPBtWDLo5WSUDt9viDQ1Zkd
         /SLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320iMwrGxzaNtzRz5hfnODp0NMbA8hOApNZJGu0kD4to7B6n9+8
	Zx92Dv0iZQXnw6dFbU5ZgDY=
X-Google-Smtp-Source: ABdhPJzHCpi+bevgUFwKC2mSLvqQnmj5B1VBz5o/dJAFTAJbHUzjncX5uymMGqWR6IyriD7NU6nVbw==
X-Received: by 2002:a25:764c:: with SMTP id r73mr33122001ybc.271.1623158527883;
        Tue, 08 Jun 2021 06:22:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:3c3:: with SMTP id t3ls2326667ybp.4.gmail; Tue, 08 Jun
 2021 06:22:07 -0700 (PDT)
X-Received: by 2002:a25:ab90:: with SMTP id v16mr26476744ybi.38.1623158527488;
        Tue, 08 Jun 2021 06:22:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623158527; cv=none;
        d=google.com; s=arc-20160816;
        b=RALjMf0vGdYa7P0k5jELE6aMCYMTUPIE7JzO/lUWw+Q7TSYAsBOIRJm751FGq71g3y
         Uw32DWU9vTx7o6vqmkLT5Pqf6c9D7/9dzQ1WKZ7WFY47+vW6j5m9Cykcj6GGuMKF6P95
         iihMLRxduM3Ksbg64s/sqShTRgxQvdlt3YoSCxzGuI7fsk63CoDnU6nLOy4S3/Z8gVph
         walXrvyhscOqH0V/Uzk/OTmFdIK92MHkPj6faW9u+HFhduklsdtC58gkezqpDTJ/ULWX
         lU1FqWuM6REhn2wi6/lEtCI7GnqA/YyBVrS7wGARDPXJgFE9FSOxB3uytpscyUhJUuwp
         scsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bdq4noTtoXFeAWWCZeWA9F6gk/S8JzoPHILBDaw0/V8=;
        b=i/ddnKn/Quy8RbeRkdrPuFHLR02BU0wPGBs0YItz0f08HYY8HiyecE2evh2AweJhzK
         hmQK80lrA/3SBM15EBf9fbQxDZxT6up76iM7zLOLgylqhEkNYDF7fdD+TLV3c7c3dGI9
         kizHvgw9C4WXUtcXeXnYfuh4oP2iBcbjd9nSoVHZ4bwVROzsdoJR24obLLRpEr0cQfjP
         PWa5B1QZbIEnEEpyP3ATGyj4vNhXKX/Mvqwzcp/IdhB3FuJ48q0Z7vvK156oiMCGiTb+
         0CIwp/to5rtNVYyVpffXAS4TQav1J5BtiwGPr0pf2d1q6NrCKW+SIuEvn70gSpUps3MG
         YRyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lyKsXvu9;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g10si2182717ybc.2.2021.06.08.06.22.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Jun 2021 06:22:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 01E986124B;
	Tue,  8 Jun 2021 13:22:03 +0000 (UTC)
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: catalin.marinas@arm.com,
	kernel-team@android.com,
	Will Deacon <will@kernel.org>,
	Lee Jones <lee.jones@linaro.org>,
	Peter Collingbourne <pcc@google.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <nathan@kernel.org>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-arm-kernel@lists.infradead.org,
	Elliot Berman <eberman@quicinc.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] Makefile: fix GDB warning with CONFIG_RELR
Date: Tue,  8 Jun 2021 14:21:53 +0100
Message-Id: <162315417458.2255276.14036371169273697927.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210522012626.2811297-1-ndesaulniers@google.com>
References: <CAK7LNAS_LpZnweujqVwZ1kL0eDYR726k35U_yx1djqNE0bk6Rw@mail.gmail.com> <20210522012626.2811297-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lyKsXvu9;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Fri, 21 May 2021 18:26:24 -0700, Nick Desaulniers wrote:
> GDB produces the following warning when debugging kernels built with
> CONFIG_RELR:
> 
> BFD: /android0/linux-next/vmlinux: unknown type [0x13] section `.relr.dyn'
> 
> when loading a kernel built with CONFIG_RELR into GDB. It can also
> prevent debugging symbols using such relocations.
> 
> [...]

Applied to arm64 (for-next/build), thanks!

[1/1] Makefile: fix GDB warning with CONFIG_RELR
      https://git.kernel.org/arm64/c/27f2a4db76e8

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162315417458.2255276.14036371169273697927.b4-ty%40kernel.org.
