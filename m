Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBMWUVCDAMGQE4S4LH7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 662EF3AA1B0
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 18:43:32 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id q3-20020aa784230000b02902ea311f25e2sf2022258pfn.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 09:43:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623861811; cv=pass;
        d=google.com; s=arc-20160816;
        b=BTLY9A8t3KlAv1guvBpPega2XDCR3vKsiQgF79cU9BTQnlY/z+lmKnXo0szWqyv/c/
         p5F/n6Q7drxrvrRtjCnL4jYn0foowWsWm9N4vxf7iGSP4QyZyg5cNXt2XlT1y9hIEyq9
         Sm8rsBEI5QOcr/WZxjg9veWr7N3a8QtDjnVlxYl5JaAZG9maSOv1UcNWk2t4lwzXW/gC
         U4xcyFSeSSsyxvJ3+puzbZf+sKozP/s2f6//M76EktaUTk2HT2cB1XjG/+WFIDfREUTn
         B2l3uumQxu7nCdgLuNs2XEXERmzAjF4i0NfXukRr9VfPdThpn/KtWqkfBwRHrM8RHrn7
         JnxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=z+uB6AP9Vz6jT7TDxSPuHltR3h7J5IdZqr7X97BPCKQ=;
        b=mRqqG8wqwOhEv6pu3gAC0ULTdCb60ccwjzaUIuzPLkYz45W9/8hDtml0h47L670ZKn
         s8iI6X//0dnw2yqkIdp3S8d+gCSYzsgtGhhczHQfToakV4I5d9+5gZ66KoyDZN03jziO
         OM/YjOGTqKAdNj2zlkPILR0zf3qFYyFeFDtniiywZ/kGOLSa74DLcaTo/62vrF0Xgvq8
         iJMwf9SBFrMx1KHv7ToTYSWWki37PoAbGO6a5dHl+yFiHgsbN86SAN4wJbcKxL+LEqVY
         Pfo0FTv59hfpkZhszw0Y7w2pKtapEaX6Yn54/g+eCeZcoqfdDuJKYl53kb+WlFuY3h2c
         PW7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Pk+mS4DK;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z+uB6AP9Vz6jT7TDxSPuHltR3h7J5IdZqr7X97BPCKQ=;
        b=HcZASN45i3p0h4JNf9+gWzP7bqFU8s3OUHVtFkxRSSk2FAiH56bMr0l8l0P5XO04GR
         tZ2e9qp10NF/h8j3acS17Rq6GEEOx948oLEkGyhVvNrkyhwWAQ2qHeFv3l8UpBgzSHuo
         zYFStlKW+sLQqUpHaFyCEZ+7H/KiVA71oIxM7cLzrz+7akbFvtO86z43QcqKkpaZUHrC
         qG3p+qFr4ftZTQd2kGbVV//FuejRCC5tcMH2Holaq+wAK1K2Pvs1Ccz0cjQ5IRVlNpJV
         3NrG2Zi/1+Rx+1MjzlAYoFnVJ6rgPGDPvYHlDAmmjQ88Sv9Stli2igFXWoxrOIeEbfyO
         yDTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z+uB6AP9Vz6jT7TDxSPuHltR3h7J5IdZqr7X97BPCKQ=;
        b=MV6aYmwZHU0AQquT6sIHaMCT4Ewk9al6jaCkrPxbDnSrYifpItjVw99sSpRbuQdyRb
         aFBdXxYPcQefSEzXXdGbtRy5zuJRy4EfPE478cD7KlYzjZYAC7SJHnkF6rdrZttvxTzC
         sZ3YQzj/NuDOKGU1T07G1rzLtDUngGom2gBa5DT4xsBBMkprFFsCmOI6+yoaW7pp+uq5
         qg4oKSaqGVypalb2h8b1p8RvO1Aqn4bOLSrwZuEV5ycGHygwjdbtK14jxbmV0xIBhPMY
         HtNh+BF3Ho1FS6q30BTR8Vo1/nYDtn6U4mp1Md5yJ7hi7tkauXaNs5Jc44gTeQyKnCPX
         dWdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530r3v+85jh5CfLBnDdXQYU2yWxSIba0MPMfwD5gDNCQ6yUBOENF
	g/vKWFLfxohnH0QBzX8T+U0=
X-Google-Smtp-Source: ABdhPJyMuKwMxkNc76NFIDZQ0K8/hPe+GGfoByOBQ5DHJW20vQtcw7cgTisXoO3JfwMSLd4wOEF3wg==
X-Received: by 2002:a17:90a:7e8e:: with SMTP id j14mr11564699pjl.151.1623861811025;
        Wed, 16 Jun 2021 09:43:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e802:: with SMTP id u2ls1461314plg.9.gmail; Wed, 16
 Jun 2021 09:43:30 -0700 (PDT)
X-Received: by 2002:a17:90b:4c52:: with SMTP id np18mr11707731pjb.186.1623861810468;
        Wed, 16 Jun 2021 09:43:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623861810; cv=none;
        d=google.com; s=arc-20160816;
        b=0sWaOZRsq3QXcJeFj7Q3a9h8Y1P6TOV3Gzg+HfUSoXuocbJEYNlfOWGy3NSBFX+pjU
         XSf5Q39YuBI3i1gL/Z7YhPNB1zUX8CTQZDjFeIPy5BG8XH6s52AJs5nMXr2qZr0xMOM3
         V5gQNygyj3W2dIrfp4NxaGB3B8n/6t56gDeKOD1UNxB8I30kk7Zfz+/T2Uf7RxbKSP3u
         BISie29B1MeuTGn6DbjatbDl9+BTAyvY2blhuDGY12D6+YQhq1BP2NS6+rpX8qmb1vq6
         Dk6Xt19jYANV+CDrktpClYbk3F+nDq6K1HgJNQ0nZ/jetZHrrqoB+tI6KShbKPLOiE1o
         +RsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LJ1OHgnR34ogOAEVHUpUGKUo8aum/tsPypBTkAfpFU8=;
        b=JMcBVZX9dUz0+9WqgkjBxDnIRIDK3tSDkqnZWZsMV/8DmnpqBDm1whRBExDg2N2nCb
         isx+he2jBVjMhwNcFe1mVrWwXKDgJ4I2qjmJqyFvSvbcis5QvN+4PwvQBDjkKcNGU/+L
         ndJqO9ywxvthXBkLT7N0eFkqN2G/uXOK6kQYfiKvMlJIVUJFMk/fE6/ilfFx6VCM1Rv4
         55M9Sxo2EBGZaykJD01WMttnF36YfdFL3kAhuCmRCpq5RVGNJ4giauz80LAazCKJdXrx
         NcWZr5kBF8judYjQs2+hHXJ1H9nAz+6d6iZyvD+FM6Nz/8rnf3MUuHV3CtZ3yvCwwwfN
         wWKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Pk+mS4DK;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id y205si337632pfc.6.2021.06.16.09.43.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jun 2021 09:43:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id i34so2446868pgl.9
        for <clang-built-linux@googlegroups.com>; Wed, 16 Jun 2021 09:43:30 -0700 (PDT)
X-Received: by 2002:aa7:9118:0:b029:2eb:2ef3:f197 with SMTP id 24-20020aa791180000b02902eb2ef3f197mr576275pfh.27.1623861810210;
        Wed, 16 Jun 2021 09:43:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id ei23sm5895053pjb.57.2021.06.16.09.43.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 09:43:29 -0700 (PDT)
Date: Wed, 16 Jun 2021 09:43:28 -0700
From: Kees Cook <keescook@chromium.org>
To: Lecopzer Chen <lecopzer.chen@mediatek.com>
Cc: clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, masahiroy@kernel.org,
	michal.lkml@markovi.net, nathan@kernel.org, ndesaulniers@google.com,
	samitolvanen@google.com, yj.chiang@mediatek.com
Subject: Re: [PATCH] kbuild: lto: fix module versionings mismatch in
 incremental build
Message-ID: <202106160942.A89674E54@keescook>
References: <202106150821.B4D3E02@keescook>
 <20210616080252.32046-1-lecopzer.chen@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210616080252.32046-1-lecopzer.chen@mediatek.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Pk+mS4DK;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Jun 16, 2021 at 04:02:52PM +0800, Lecopzer Chen wrote:
> Yes, We can imitate how CLANG_VERSION was implemented in Kconfig.
> 
> Accroding to GNU make release page[1], I've only tested for 3.81,
> 4.2 and 4.3.
> 4.2 was released in 2016, I think it's fine for LTO lowest version.

Okay, sounds good. Are you able to build a patch for this?

Thanks for figuring it out!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106160942.A89674E54%40keescook.
