Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUN6RGBQMGQEAP5OOOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BA934DC53
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 01:14:26 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id d4sf2640783iop.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Mar 2021 16:14:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617059665; cv=pass;
        d=google.com; s=arc-20160816;
        b=nO41+LagA//1gHYxB0YtTICAPD65+FExGlyHF+Qkld07qJCnooIfFks/UhpP/hVTpc
         cSbl8pN3yjumHDjKfe4d08pSs13H72z9Cl2ati78EEd6KmpCMVjO0CaWDc6vVrVV6Rnu
         lPKa4gkA/rfssw4pF9TNIK2A4GunPkwLlM71h9au6jhNxG7yA6HzFYtQ0yKVPV8bhkS4
         sSJmduGmD8rYOSkDKI0IzQNtCJX4qIjpFAUdzMdwZ8uvhBX77tUh1u5RPqq+G5/ahgGV
         tqMv6PSDtxxZJs0Ud2LNpKlInxADj9TOQR4ntbRuc4a7RezPx6fGzlmwCSMkaBtMgHhK
         wlZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=qEH7RQuRFvEqbfP3zxeGyqrlQ/SsRRUMJkkY2byw4nA=;
        b=DIL28jJeLuPJH8j2FpTl1Ae9bFXY4rMxkx8kCJTK0IKTHKeBMAKjwOSlnouP1JI1d6
         AJUAGd4SPnhCoU59DcZZU9Gxc9zO2kHmrnTqBoJeD0aRyzEQrSZ8WffJQlwJvb13isrU
         9vKG4oPSY2o22/PY/jfEwtbD9iRRA0Z666mnoqi+bWnQp1wMSC7b+UBMBHB9NAK9kd1a
         3aQ3v5EHrjSZYzSUXXOJxh2eibK/bwDq5H6LBLecS/Zy3i/rniaVu3YwEwxQ6lpAufML
         HnvuL1kWOQz/XKAxM0pW7Y+pBv/c6iNhFJjvYpK1LcQCsy7pm4xRRKzd+2u/9GkXCshl
         6gUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TOqTuyiH;
       spf=pass (google.com: domain of 3uf9iyawkakeoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3UF9iYAwKAKEOEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qEH7RQuRFvEqbfP3zxeGyqrlQ/SsRRUMJkkY2byw4nA=;
        b=OVCAmwCP9KjP1aY42NYaBQDpIAaOIBcpAhwsuQGsGNfWF7emnYgnYB7SWbjIjCm36r
         9LXDqSMq03KAOTN3D028XxQtNwhCOxXKZHPlIcte2m0f2E9nYLe8ZPuUUNls9qvLNBhn
         rXhtRjmGtrDwFuiPav44Tot5sq104vWrumnCpfqmlod3iLYiBKGwXoRbzLCcKOYz/XnI
         0ucskNloznzLrOy9SZnIJwJESsBXoKMUsXQa2Lg3k4ahOBt/QpNkPk2jMHSSEPFzoFbM
         /VNHffhtjG2c61l7v718xY9x7puHCJdbApgQ66G5VMpJE3IdxhQ6eNBZaniIcayDcTJc
         U56A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qEH7RQuRFvEqbfP3zxeGyqrlQ/SsRRUMJkkY2byw4nA=;
        b=d31nZi+xCznvElfLPTyT0M7jx/05npWEkt92qewyo5qXeq75QlNVcgOx82X4YLUNst
         WOzvHC/Lm954dAlwopqwEKdS70wCRe1jNyx0Xxelu7SK1t/VXyhmTfA13Dwpdfw4JvgB
         Em+CFCShWyfsxFnvd4wl+umw1iQmQ2K0kiUvlldduTKF/4pBP1XtfSMif0M9JUsHh3xU
         acE1LhJ9d0wDmIfGBHSxpTD7lM2x8sTe2eLoQhiXI7u1cSQQbiGJKuek7+Pr9xh/0P+S
         lKNxYJu5in1iYVFk9QbdfWWOTHOeXTLb7KYpc4FQTM6lH5ev/xwCc3ITCwZABFM9Jq2s
         tA7Q==
X-Gm-Message-State: AOAM533Vd/1cwgBKR+6+Zuix1Y3JYBTxkA2Aar5cPOxOySxyBOPiWFTv
	P00HuV/P8oqAYITDi0sNljM=
X-Google-Smtp-Source: ABdhPJxkFI7E4SpuGoM2SJUKNZiRlUeBKz8Tz+r8cjDuyTjAdWPj0C9GTnOHrbhCrYRcFiqrcmoUFg==
X-Received: by 2002:a05:6e02:13ad:: with SMTP id h13mr22662002ilo.32.1617059665366;
        Mon, 29 Mar 2021 16:14:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:b4b:: with SMTP id f11ls4009542ilu.7.gmail; Mon, 29
 Mar 2021 16:14:25 -0700 (PDT)
X-Received: by 2002:a92:d58e:: with SMTP id a14mr21555200iln.61.1617059665083;
        Mon, 29 Mar 2021 16:14:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617059665; cv=none;
        d=google.com; s=arc-20160816;
        b=GMaFEIf24gkJQk17GMDI9mYxVyr2HrCFy3yAmoySatcaI5L6SnGhwRcYB1B6wAPNXI
         0CItHYXdiagzr/labuqQzbc1eQA4wGEDEYkx51HWtN+1Pv3RKwfSmR3t39bQuqK/rE7o
         MjR+05CUByWXe2sLRv5ylYdi+nq+7PIw+kGIzlzlSzdiI230S9pAg3CYIq4c7EEWSye9
         NiXL8Z4qhF05ikJgpov3J43hKXk/UZH8SHvT14GnVZ6totYlRyY7tynQ5yzKf4NJ0l75
         yv7Nn64PHulbmnE9rd6eIHpxl3B3zMZKZBwCZD3aAOTd4rEmjrnJrEykYSZWw67/RB9O
         EeNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=WbL6Dgfv19ESq2vhoguN8WYq0PGt7TcFwh49HZU1Vnk=;
        b=NGXabq/+bmdC1n0tEa0S73UmTjZASFp4wEFIWFPCVxVoGV4ujM5v7H1e28wzTW/X3E
         IlwkoNwfnMXXNvdOhcxeVwIv3xptw932WoSo5vqL0dCgUdaxxelwr/j836kKoKv02ywe
         HBgqs2/u/97+B0I3N7eTXiqmNhKaIuH0/0Ogh8HlOxkFCiVJ1S4/1d+1nnDwopkDtB1o
         lgCDabEzj1DXDLoNggRhCRcnFsOc0BoZVN5gYCWPhq4wou/ialyzyT3cNhcnOKWSj2GX
         CMqMe7QzjnrvanBL/6x5IBXAnyHCu1sRkJt532n5haA1LSrZaTf2UaRYwf4wD9PB7HbJ
         PTFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TOqTuyiH;
       spf=pass (google.com: domain of 3uf9iyawkakeoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3UF9iYAwKAKEOEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id y13si656952ilv.0.2021.03.29.16.14.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Mar 2021 16:14:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uf9iyawkakeoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id 7so11828255pfn.4
        for <clang-built-linux@googlegroups.com>; Mon, 29 Mar 2021 16:14:25 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:c959:2751:3fb4:47b1])
 (user=ndesaulniers job=sendgmr) by 2002:a17:90a:4d81:: with SMTP id
 m1mr1356657pjh.143.1617059664444; Mon, 29 Mar 2021 16:14:24 -0700 (PDT)
Date: Mon, 29 Mar 2021 16:14:13 -0700
In-Reply-To: <20210328201400.1426437-1-yhs@fb.com>
Message-Id: <20210329231413.1971368-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210328201400.1426437-1-yhs@fb.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: Re: [PATCH dwarves v3 0/3] permit merging all dwarf cu's for clang
 lto built binary
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: yhs@fb.com
Cc: andrii@kernel.org, arnaldo.melo@gmail.com, ast@kernel.org, 
	bpf@vger.kernel.org, dwarves@vger.kernel.org, kernel-team@fb.com, 
	morbo@google.com, clang-built-linux@googlegroups.com, sedat.dilek@gmail.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TOqTuyiH;       spf=pass
 (google.com: domain of 3uf9iyawkakeoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3UF9iYAwKAKEOEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

(replying manually to https://lore.kernel.org/dwarves/20210328201400.1426437-1-yhs@fb.com/)

I didn't validate or try to use the produced data, but with this and the
kernel patch
https://lore.kernel.org/bpf/20210328064121.2062927-1-yhs@fb.com/

I was able to build a x86_64 defconfig + CONFIG_LTO_CLANG_THIN +
CONFIG_DEBUG_INFO_BTF without further errors.  Thank you for the series! FWIW:

Tested-by: Nick Desaulniers <ndesaulniers@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210329231413.1971368-1-ndesaulniers%40google.com.
