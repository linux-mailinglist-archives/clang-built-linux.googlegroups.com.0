Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBV4XZODAMGQEO6W6BHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EA93B137B
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 07:51:20 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id f16-20020acacf100000b02901eed1481b82sf1069284oig.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 22:51:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624427479; cv=pass;
        d=google.com; s=arc-20160816;
        b=JoDaBBmcxcHMOmhnaVrlgOYP0ebuLtpYL2B7Ry8UdUdo08heIEkQoeVMDBOaEt31RU
         U+23AF0ozHcNUSEvcR1fZDYfw1zgYjMOl5iLAd65JDbzdAtbli5ciuO6qPVMlSw7quM9
         tla3fG5JtiZzMV/ZMmJQnlj0oSSV2+ZvXJ32IqD2BgnuYfKwSIxGFN8/inej5baYv27h
         kXVWeitYE8caR5BDvapfC3SxJdcQSUIsHGaq2FwhWoSEoOLVUw9bi+w6t5wqLQFyfL/j
         EwxLnbi1qINLlX8tm+V38Lc4dJuYR7mWr+aAkTI1STvusioPEWKm6ApVJoWb4LD1tyQt
         HmKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=isn7yTAzOOsbk3B7FVy4yWnuGtQj0IiI9YrQXH0JkHU=;
        b=N0xovWyrdMY6alGgbfGW7453NtIoA8COHcvHB6c2eeYvz7zdmhp4NYQqKIczBcnHCb
         BGhfX/7jDsoV7EEfi7bBpc7EWWp5S/ESNMfiov7ItmNWtJhBf9F+AGE78mizgTeF2MC8
         BVYaUPxUVNMAKJkc0g+IWYKyq9udoJhxelbuKvOq+WGfOgN2lV3YbeMN1DXIVODEI4cI
         gQ2bKCY2TZD1rNpittXnxQUwzEoZ2BUdKsQAtSKANxqWYNFnYGakgdxBwa39VFBpFfoE
         WBa6TTjBzK9qXHNbBUO2gsh9horuyQSiTI0+RV53nXGyHx+LNjcO6ne8ZMqbPFwDOaxS
         l4EA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Nfhhac/b";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=isn7yTAzOOsbk3B7FVy4yWnuGtQj0IiI9YrQXH0JkHU=;
        b=RTWUefMinaKDZcyFTbzDVuHjH8hNx/YOH5e1R4QSxj8GNKOD9BvhzKFSxT4PB2J3SB
         Y5E8j7zUJSd9nFEj24howfIXAHLfD6SWVFHW05EYBCVdUAGrhdatbDJgOks+V266gmsK
         L01AJdFqZaFwp9oy4aTucvRxS8L9aIkxhTZjbnbPMYGqAutmkz6cIDicBouOti+xC2PR
         kPU57c6xIb0MsKPGAGp0HQWhT2hmZyrGYGI084ho7SmnLfOYr2cgD3MrHGTXhEsgwlVQ
         mBNOPkabGv78F+hnk/RHqeEEmboMz/zgs+37tVobfYjJqPiAKFm+U477Iy7zon1XJBo4
         c2oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=isn7yTAzOOsbk3B7FVy4yWnuGtQj0IiI9YrQXH0JkHU=;
        b=GHPok0v5lmUjk8UO3AHLP0YWY6jxCtS9bCvIoneADqHfyTwR4S+8xNjZlk0PvWzwIG
         UEvi88LPM6Y4MoZ17ul2RDjN8Bq6vWv+ORv0BCtrhJmuc2yxN7NVEzggxXZ7mHA/pSX2
         IfHX207h2if9J/Bm/nuXlxGyZiDOrFHcs5SFwCsfLu21Oq5dyZxYEhdjh9KfrMa8SpM4
         OS22Eljtq8pCxhuMda08xC4EyPEjGQoRB+sqlgRfTSG3Il7WYYfalZF3WgzljGXC9adb
         EitFiOvV0BDuVk7DBgSt1DEBi61HRikD9Mn0FVyFN9A0xlns8bnEXgaWvAoooWoSZX0A
         Lf2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kFCo4Ov+DppovRz2sl/bM5zsqWuwgicetZCsyBfCptwU4uQBd
	phbYsUKe6f3jJvuRyMFWZZ4=
X-Google-Smtp-Source: ABdhPJyI8+FQWnwmB7Y/faqLs1GR6vvUG4shYuoolvgkjP7scUMLjcgU1wePAT7RyM9SVJ60Y3k1NQ==
X-Received: by 2002:aca:dac5:: with SMTP id r188mr1933710oig.100.1624427479518;
        Tue, 22 Jun 2021 22:51:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5903:: with SMTP id n3ls532558oib.6.gmail; Tue, 22 Jun
 2021 22:51:19 -0700 (PDT)
X-Received: by 2002:a05:6808:28f:: with SMTP id z15mr1906798oic.169.1624427479186;
        Tue, 22 Jun 2021 22:51:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624427479; cv=none;
        d=google.com; s=arc-20160816;
        b=FcJl5LA8IEHydTlvXV8Yhw99xtqF1v/OP+7yh7C3Kilb88FGeRnqDi0QawsW9tzsPU
         0EV55dsK7HIh/lt8EG/4q1/xmyzs9OryF7yZX7AFzXiqDOAJf67MgKTpDeEAdXHOjYUO
         KiVSZBdjAYxo5DGCJgKFhMhbUnXfH6AWUhH6SnTPEPO+vjErGeOTuK7kUkMO0queMwM9
         6l+u/95BH5IWQR4anvH9Qrmotcidy7yFL4+n+zgo50XJIwxMI0mEDRja+wqA4XmD1iaf
         WBbI05RySY4VdwbkYNBGJKHkzRkaqOCUZndhMzipBYsEgbUhXr9tFdK5UiffWMjoAzjo
         BRGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gvifQC5IeicUDnWoUsRHMENVSvoiy4CqG/g46bHGIBE=;
        b=zgNnyTrxeRfGx22nkYgM2UZt6pfIh2BQ/5++qsgpEmFoaMsmE+WXmPVr2ICAqxiDm2
         UXIUvVmIqk0dFwT27CXmBpjGXfqAz98KFOlB9kHVZjkTzFQwTisAPxdXvqzPvTuMBYDL
         5Qbjd9WcCCKw3P9uFMY+WG6BJSeXCohhlZZ6647g8XACbkzpP8M3k+emnAZw9laxmOit
         Au/RuAsTMH1Mub0F6Bp6VqjbGKCQTpRPLKMUoIM23JWYJY7kIPoq+6CdW2wckhaQASeX
         37G+1DNiQATySSHrbWBvNtkExyQohSJC4tjg39TIg4/+3ReQySdUI5A8Fop73BQ8NZpv
         xVYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Nfhhac/b";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id p16si349964oou.2.2021.06.22.22.51.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jun 2021 22:51:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id c8so1457177pfp.5
        for <clang-built-linux@googlegroups.com>; Tue, 22 Jun 2021 22:51:19 -0700 (PDT)
X-Received: by 2002:a63:5553:: with SMTP id f19mr2218816pgm.419.1624427478576;
        Tue, 22 Jun 2021 22:51:18 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v129sm1108705pfc.71.2021.06.22.22.51.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jun 2021 22:51:17 -0700 (PDT)
Date: Tue, 22 Jun 2021 22:51:17 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
	linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] ACPI: bgrt: Use sysfs_emit
Message-ID: <202106222250.7BD80A12FF@keescook>
References: <20210623013802.1904951-1-nathan@kernel.org>
 <20210623013802.1904951-2-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210623013802.1904951-2-nathan@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="Nfhhac/b";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432
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

On Tue, Jun 22, 2021 at 06:38:02PM -0700, Nathan Chancellor wrote:
> sysfs_emit is preferred to snprintf for emitting values after
> commit 2efc459d06f1 ("sysfs: Add sysfs_emit and sysfs_emit_at to format
> sysfs output").
> 
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Perhaps just squash this into patch 1? Looks good otherwise!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106222250.7BD80A12FF%40keescook.
