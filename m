Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBYP22GBAMGQEY3IQ3NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9985E341A09
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 11:31:03 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id z5sf25887739pfz.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 03:31:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616149857; cv=pass;
        d=google.com; s=arc-20160816;
        b=km80ey99D+rIEA7U+WRCBA+olDZVoFw63dqOfoisoFbwDsQBlnODbpo44VE6yOadW3
         Hck9xi+GvnBvmE1WU7c8MUxbdHOrju8qsoUEjIBwURVO/ZUytg7SsWM/3uN/FI23Gb8a
         UDXaRTWzMwvTENESAyw84QYOLVf/KzbaA9qoaSfEfbNPxqLObbFcIeVLleVcXEJ1s46C
         V3wm1dBCISHRf0sb5ukrimHH7wiB9YFR3joeWQe/jLioJ1oohCJjea72bAUSndVkkxxV
         6CfwtaRWlc63cHRJzdE55HFxubFuSw+sCmNRRxGZ3TjHNKNAEF01Hptd954zxiLz5Nio
         1tyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Sv3SCbP275WIRCIviBk5RJ8yLz6oaTrbKbIXlh6qLiM=;
        b=IwjxAIBSu+tcMe3PG5v9O+pFeWX/W+JQPGZdl3elkNymD06aBxfImQOZD0dHY406B5
         ceegJ72RIC3/04Zm6zWYL0S0FW9uhNqpM6TNR/W16mJdSEJf05Uq1D3i2QTJsmDzdhNa
         jKNb2lycZAZRSD1uBbS4fckeUGKkNvlP8Ik9ox3dilw8/G5n5rZhPV041bg/Si0nZpCx
         i++79F576TRprOkJTB5F8K7JgWDFaU1HEGLNg2MFvIx/arFFA2PEfAnBxqu89eFYsK/p
         hLmZpLzFs9bZ++pA+Yzv6FTpxHUxWdNRidsE708o5vD4br8ARjRQMDi1I4ZYtgYeiNKY
         Lixw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=xujaYl2U;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Sv3SCbP275WIRCIviBk5RJ8yLz6oaTrbKbIXlh6qLiM=;
        b=SGXdy/R4d5xCoTQ9kd+Xy+BbV6XwbSFl6lSUfVsdHkPQCgAa5vhLdbSo3JxjeCBrsb
         WIiyj1fIjAd27ghl9HSkGWnwDOUAGdg1Gyqv7nP6nIw2AX2Y1k4N7/PiER5ZPxonyob6
         q1ZoR2J61F1tbAePdl92mLhjGMRvagsXVD2DBn48vfmgy3zVqM0CVm65VXoveBsVgYX6
         IWzSc4fRNOF2ekd/2Ek4rjXznvbmWPj0S7b2OjN6GxvbG2Ar8EHB6SdpltG4FdmpRqcH
         bmQ/KQJASWqCyRpam+Dcg5MCOcky3zMtgILtFe9CAVcVcp9tHVsGejpJXrZR/oCMvHfO
         q69w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Sv3SCbP275WIRCIviBk5RJ8yLz6oaTrbKbIXlh6qLiM=;
        b=IvpWpcZTOFuVvdM4LMXHWTX0yeoFCOZq5Jf8g3qNhxs176ChuCng/wGjBOdNo5S6Jc
         9A4izqzCtsL/OJ3UELTr/gxBbt3WrX76DrsDiY9QcvKF+TmyJXYoo0eWscK51c9A3qNq
         /S7y+nyDUQEwT9DXDIm9N8oSmz/ocBpect4X/qGOHzBL3ZQhMV5Y0q4lnzTnOZq7y4M0
         eHWUEaUxMh2HYnM6YwDhqxEHYufahxlF6Ek9McB1n8kb9oz198ScSaKbz7ZAIPITGFce
         6SiOzaDhiVVuyHYwKwl05GTQjViBMHl0vSmuX5UyoNPAP0I5ilGzv4P8y1WuEfrKttZN
         DY4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ucaMSlOzB0YPQ4lmxyQ2kbkTiwFDLDedVnGfxulOn4ArCR32Z
	g0fIkflQN/1SQ/B9genYVhc=
X-Google-Smtp-Source: ABdhPJx6XjsuGyBMW1TkavYmLxMGCIbnT+fAw74uH5G4hMkJi4yleMfylHcYUVU2yyPgmf41nAkGOw==
X-Received: by 2002:a62:8203:0:b029:1f1:5ceb:4be7 with SMTP id w3-20020a6282030000b02901f15ceb4be7mr8841898pfd.48.1616149857190;
        Fri, 19 Mar 2021 03:30:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ac09:: with SMTP id v9ls2257938pfe.2.gmail; Fri, 19 Mar
 2021 03:30:56 -0700 (PDT)
X-Received: by 2002:a63:751c:: with SMTP id q28mr10569637pgc.352.1616149856683;
        Fri, 19 Mar 2021 03:30:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616149856; cv=none;
        d=google.com; s=arc-20160816;
        b=ow1xJpU5PqDdaeBdUYdsRUfxqwNQbdNcgEuMz8dEJh5Zyj+H+AGQrcxzDvxJxytFEb
         Ijq5tmWDfhPE58uJab/EzFrb9N0sYmiFwdO+aMYVwysOcIG4tdy49lkSP4mCBe0rnGml
         V0VxWtPXsYQTrEiTAuqfjf68CQdhyEBJwPYpJR4QIG1ebJxifTW/nYlcCTSF4yy/NFnQ
         H0JoPCMJIUy+MuAQqYVc79gqibEuCfxBmJxOyV/puQZRb2DDZlENbZ8XVNP9PjkkTs5E
         9dqys+Vj55/BUoZnMFo/idgZrNtDoMAXwFZl+RAAXL4R2uB2nHZTcPUcJkENX2AYJ4Ki
         sChw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9QrwUAPj04+iFpyp89E9d51fki0bIcSWBot+jGoC0A8=;
        b=yNIAfbx+S3IAzOUK07ejiDrU7GglrAGFMD8UkO0JLCUtxsuX4JSnoP1BwQ9XPP/KB/
         AQRfQlCoMIyKP9xSiXK7w+R1MHz/s2YhLoUOCPMNqdruN2ZEjZYHy44SIszaW83AVN83
         XFhAi7sEqjj0qc487zg/WAUSHdAibyNj/L3Nv0LbaeBNLBzeBPQGzhDh8F3aeipLN40z
         b2MHjn+j6DwIJlsXZsMN6ocS5dLxIfU6o2NCrHQ/dMO5VR3gyC6dosA8tSrGFI6f5qs+
         8pgMSOKfJzxc1rq1IB9S9O6n+vV1mDwwUc5u/z0snx2s6e/Tke61l92wAe3jkDazG1em
         Lc5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=xujaYl2U;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id md20si538267pjb.1.2021.03.19.03.30.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Mar 2021 03:30:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C39BD64F6A;
	Fri, 19 Mar 2021 10:30:55 +0000 (UTC)
Date: Fri, 19 Mar 2021 11:30:53 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nicolas Boichat <drinkcat@chromium.org>
Cc: stable@vger.kernel.org,
	Alexandre Chartre <alexandre.chartre@oracle.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Christopher Li <sparse@chrisli.org>, Daniel Axtens <dja@axtens.net>,
	Kees Cook <keescook@chromium.org>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Michal Marek <michal.lkml@markovi.net>,
	"Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
	Nicholas Piggin <npiggin@gmail.com>,
	Paul Mackerras <paulus@samba.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Sasha Levin <sashal@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-sparse@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Subject: Re: [for-stable-4.19 PATCH 0/2] Backport patches to fix KASAN+LKDTM
 with recent clang on ARM64
Message-ID: <YFR9XavlXEL6Z/7l@kroah.com>
References: <20210318235416.794798-1-drinkcat@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210318235416.794798-1-drinkcat@chromium.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=xujaYl2U;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Fri, Mar 19, 2021 at 07:54:14AM +0800, Nicolas Boichat wrote:
> 
> Backport 2 patches that are required to make KASAN+LKDTM work
> with recent clang (patch 2/2 has a complete description).
> Tested on our chromeos-4.19 branch.
> 
> Patch 1/2 is context conflict only, and 2/2 is a clean backport.
> 
> These patches have been merged to 5.4 stable already. We might
> need to backport to older stable branches, but this is what I
> could test for now.

Both now queued up, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFR9XavlXEL6Z/7l%40kroah.com.
