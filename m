Return-Path: <clang-built-linux+bncBAABBPHETXZQKGQEMQET74Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B32A17F57A
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 11:56:00 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id k22sf7340493oic.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 03:56:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583837759; cv=pass;
        d=google.com; s=arc-20160816;
        b=MWgPq3VJen0oLFrl4h1NAL0ZKX25hqq4ZG4vBJVPd14dYdAjLtGQ6FaUzkaPrC9HL0
         TSc7dODexLOZFRD4OIP7qzA5sOwmfcGwO5gHI8dyuRVIT6KAheDMbtXsr/I6wCIcKLY9
         M4DQ9vBFKesbd5in2v7Lp9H+61OjyymiBVaol+TdxSIGVrMr7uIskKT7P5YWEHvUXfjY
         w3iO345cOSDm3/O1KMtjzlDcqfRbD8b8rvfJNlKrd0kEuMpxGMMO3CKiCikCpBMWSReD
         gwJlpBi+lSKBLesg/KSqt/F1unW8Gr3M+yRcQZU6shGfna+I+8CAgy3Q2Jnaz/d9raso
         2olQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cYgcDcolZx2/EQIKAcZVur5aynk25S3V20WJeTZTDJo=;
        b=WjOtQGspxnGbwaUpKoZ7KExGL4U9jSheRb2aReEBVx/VdJ8b/8N9xmybBo0RLQtOlL
         Kzx7hqusTqMDQnHzaM21+/0+1QsQH9bzj+fs17KegSOua5AvN5OgfTCCLSEwnn5MO7lN
         WGTF3mzQEdC4fXgeYNzRRCgOf5xepMEYuqxtdCS8tdDjKAmWVj8xN/cs6DhGJlsEyigv
         nyuRTX7slV+jm/Zh6qUcmq64ZxbSEJFOe/AXiEgvCh7hg3NtLiZbmatVFTTrFAWKRiX+
         9u/yKyzPA1P0AKJX8gFXNafvYV6Sh7D9hHPMxRWCqJMYM76wP1/1IX2H0CR4wtY+t38W
         Fmhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of lkml@sdf.org designates 205.166.94.20 as permitted sender) smtp.mailfrom=lkml@sdf.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cYgcDcolZx2/EQIKAcZVur5aynk25S3V20WJeTZTDJo=;
        b=DVzEDjqmNq+Cta0mrhvQXKRzivHeD+ePkvdnADX7djWY5KIHKoq+PzRB23kjM6yprL
         jKgbI9wJX7r/8eYHy8aia4vS+ir7Vg6cAmMhNOyjUJ6ZGKftwjegDQvRFuj9QQ/4vxpt
         SAPfiYg4xFDBBarNnDufFeWHTTNv0HI2UUPpDlpznM+tNGQwI3az709aCsxQ/SVGweQ/
         vX75wgvny2ihRiY5xqy2tK9ErRa9jJ6y9BpmDIkedsTsx1ZQMquTtHiQy2HTRarZQ93X
         Yjlo5YdrfkAF3mDKDSWjJS7BmN3rVb8Um50e1eHc6iK7XZUho8Ko152nc1FEBBunStw1
         tGOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cYgcDcolZx2/EQIKAcZVur5aynk25S3V20WJeTZTDJo=;
        b=GukSPYlCa1AHO/uoJlvqgHMZUUPAVnbEtWQAeTj9osCIQLEY8NkdwlDqwAcIzxL/an
         t+te0P/mPC4Ej+n7hcvnPmxQqi/GneEvFsXp9PZ/iGvmq1uNt7aIqNxof711N1IIFUMV
         fmOMU2MliYWehVo1LZSJeRpfqZpHvra0u7+3z5qP0o3Fg8+oPrFAbSqslhZAsJcs40HB
         iUzfBhfTzjpUXcO1VDV1s/HkrrVbZLRBANcSitz8aLcn7jXrcxyKtzHAejFBnMbeo612
         ohETR7BqzZIxh0nMrN/LX8ABEHe+aUBfzG7r68FC4+og9fZY0nM5625lI6Ek31kCVBnz
         OYbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2BKQVLASoKARldqHeDzS5b/rS2TBo2XKMX6zfjE2oXNsmHXpjy
	izpVSqswZE37NoJCTRznOxQ=
X-Google-Smtp-Source: ADFU+vv2gkS9OFSBW6Be0VvCEUDTWYwu8HyrDKQER3myLFTNksj1f3593VhKzTATe1rjGc46ZEfjQQ==
X-Received: by 2002:a9d:3d65:: with SMTP id a92mr15459322otc.326.1583837759044;
        Tue, 10 Mar 2020 03:55:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:52d2:: with SMTP id g201ls1817648oib.11.gmail; Tue, 10
 Mar 2020 03:55:56 -0700 (PDT)
X-Received: by 2002:a54:4816:: with SMTP id j22mr697838oij.162.1583837756703;
        Tue, 10 Mar 2020 03:55:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583837756; cv=none;
        d=google.com; s=arc-20160816;
        b=TdaADkFZGF2//SzlN1ePnO6R6ThxHbe4awHUpaMyU/zoieQGJ2RclnInqALNYp4OV4
         RwAuNTwZNWK38CsWkkY+2o12sPKZ1LaCSYnrH1Rfe2oON1k+7zrTk77oPEuueD3VxJKm
         89RA1Imj6fc9xfK135yIY5eCgPHi52RtO/RJ4nX6tKBY5dQ7i9KtRsje2XOLymLL4edb
         UXHWL+4zhyLv9toLONFVrwzhWiuZ5ir5SV4e3E9wVK0IO8NIf5lKv6ZiJThYDhkUQfgU
         jEMBALavn02b69m2mP+TTmZGp4vNIZ4mhC+WRb9zEKqfRicB367Db1+isrtxFkeB59o5
         uOLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=2/YnrlktwhhSMrPyKOA1zSamiXaiFbvhVW/hHoXT/4c=;
        b=cYhNFrIuWAC7OBQrEQ0fsySOXT1T6O+TdZA2EhxaubkZIEvPcdKRigeJmHmONY19AD
         5Cy6iNBpyYSXTrJ74Mo/rX8u6st/l4B/YUawz0vW0Rkjq+bXcAatHSdiO7NsZZ/dmvTV
         ke1ZtKkY0tWPbf2FtJPSUSiS7pOUpggDQ6pmwDrqtHujfXDhuGBl2Is4Pe6Eyk0FP7fw
         xv819BRANYuesMuGKMAW6SPOZsNkKhZTuvlcQugQSzlMGJVUEVMvYtItQoSJlQYAojd/
         4Alk/ur6enWZoWtSCVqE1bksWO5cq4tlLW5MBqNCee8/pCPOQSflCyX29O4rMvIPzaqi
         8hsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of lkml@sdf.org designates 205.166.94.20 as permitted sender) smtp.mailfrom=lkml@sdf.org
Received: from mx.sdf.org (mx.sdf.org. [205.166.94.20])
        by gmr-mx.google.com with ESMTPS id b2si466192oib.5.2020.03.10.03.55.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 03:55:54 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of lkml@sdf.org designates 205.166.94.20 as permitted sender) client-ip=205.166.94.20;
Received: from sdf.org (IDENT:lkml@faeroes.freeshell.org [205.166.94.9])
	by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id 02AAtqUs002320
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits) verified NO);
	Tue, 10 Mar 2020 10:55:53 GMT
Received: (from lkml@localhost)
	by sdf.org (8.15.2/8.12.8/Submit) id 02AAtqjn009972;
	Tue, 10 Mar 2020 10:55:52 GMT
Date: Tue, 10 Mar 2020 10:55:52 +0000
From: George Spelvin <lkml@SDF.ORG>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, George Spelvin <lkml@sdf.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] int128: fix __uint128_t compiler test in Kconfig
Message-ID: <20200310105552.GA24925@SDF.ORG>
References: <20200310101250.22374-1-masahiroy@kernel.org>
 <20200310101250.22374-2-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200310101250.22374-2-masahiroy@kernel.org>
X-Original-Sender: lkml@sdf.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of lkml@sdf.org designates
 205.166.94.20 as permitted sender) smtp.mailfrom=lkml@sdf.org
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

Thank you!  As your 1/2 commit message explained, the best way to fix
this was not entirely obvious.

FWIW, this series
Tested-by: George Spelvin <lkml@sdf.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310105552.GA24925%40SDF.ORG.
