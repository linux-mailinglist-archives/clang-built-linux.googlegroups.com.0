Return-Path: <clang-built-linux+bncBDB3FXND3YBBBKWAS36AKGQE3CIDDQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id B890E28CE82
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 14:40:11 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id z31sf6148355pgk.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 05:40:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602592810; cv=pass;
        d=google.com; s=arc-20160816;
        b=H/KMioBynF+yPNTjGLmqWvsKeqe4yxnVGx4TEqvt4H7RWScnbin4uP/+ZVgJqJcmEt
         5laqHZ+qwyLacjiSLwmXUFrTd1o72S1Q0jgn/dcBhjAXwYqMTMxRXI3E1ISUyioyO35J
         93Jgv3MfSImbM7sdfGzDN8UvInLKJXXf66yP6mBFRqXhZLnlXF3JO050REwHJH56o4RP
         wSFqDW8Afj5HwvRYLk1zTbbyFB8Pkrp/hiAQEJrvZbXDypbrjNvNZiTLtJdJmmIQgeFf
         5VtZhbKMJ88GFuuaZ8csZMI+O9FxC8UsdyOnabAWonZcCKOnszLSoD1yxHKhKZhGO2mH
         cxlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=0lU/VCXWUNd8rs51L9wS41ZwZvGv6Rw/5zp9drn2PuI=;
        b=jqY7bwznsVq9/OvWD60eTteTb6vnHygxKWxM1jZUlho+LGu+jil5XtVFlE4N26oUvz
         wSEaiWI2o9UisTlcKrR0dps2nwGzqKmcQ4q1AX5QUZKylPFJA1ekb84fp0pBvDxjhelB
         Ewe7vt/JYmhHJVUPAr8B2m89H2Ee3oW5K36W6M/HN9Uydv92rB9yRXs3Bewt56807QSu
         gvc0Gvqf48Vy2ETy/MEel2JX8TbhNhUNyekE2NphUaxW7tkCPTxWDPeS0iasEy/3ANVP
         DdrgaAdEK3Xmf+xbsAONfMGRGCroCjUqubZo1swBgF/G3egeZ1DwKlAyDNtiRuwyrkpi
         jnEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a+Je3JWp;
       spf=pass (google.com: domain of richardcochran@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=richardcochran@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0lU/VCXWUNd8rs51L9wS41ZwZvGv6Rw/5zp9drn2PuI=;
        b=JHvisjEWIyBFrkG4OHnf7sLgbqbYNQbTl9nxnsb87oXQUWrI2iYE8PXk1IMpADRX4x
         cVvL7kAcc3eDXATMfA2Teff7SoyKSOiwHd4JzEYNX1RmQM8iCNehqmIKTs61nZnrewm1
         9DHver78exhY3dx90kU7OZsuNchBfXDWjQNcHmU6Fvylk4MYivDhjknj12Pnlh5IMqc/
         as8VsEUB8DMA4PZZdw+K5G3EDgJD6r9oXAVNfjPLEiRmCaTziV/3z1isz5vNFQ9ZCCk8
         oilLyPeKi5llPw+8QJI0QhrbU+V66Tztirbo65WZ7PXnXRyIYEYAMu89LyGEid+V8maV
         MBNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0lU/VCXWUNd8rs51L9wS41ZwZvGv6Rw/5zp9drn2PuI=;
        b=A+4VsQKbr1zG6yjrJv0z8PsCaaimdA5Y9NcGsx9rbpoc/RwjzT9SnsmIvPzNMbbmXL
         6j68Mwph5H/anzcLvRwebYqUdBrkzHQ2e/3F7/XgTkVryqJ5fRohGDOb4lpums2iFk+7
         FP3dzHm0KkN58xmL8qXzsBcZf6EyMXRXcWENqZWl5d9FCToCzZXDeAePvYy8kkmXp+ER
         oyq43c8XRgIdzw7UcxGg7lMA2LnSdX5XZWvwFQIYcRiHjMuzaONLns9CoLCuwDZuRb/R
         h4fG6XQpI1kw53qn4ALjM0sD3UY4m5kmYwe2pJmvrCEI6I2OSjezdPTYBibr6ccqoVjG
         jkEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0lU/VCXWUNd8rs51L9wS41ZwZvGv6Rw/5zp9drn2PuI=;
        b=SgII01ZUK2IbQfc/cRHz0qJZjqeIMdgNnDKakB4vbHw3w9tz7w/Y/ROofVzwWB6Rl3
         ZmrE4fzOJxRo+pMFkPOmDvs7F3Zpn26yDtkeB+LS6piyUkDS3HJ8INy8tQRcoLZ9ufi1
         aezLiIEDjaxnUHg5dMcaywwsyghfA1e4mx/ZQ+1y5INMXMXnAdbnZrkjkLw/XjR94fZQ
         bNJsAYoYnielsmZNanXj2vbRwQkvwncqGZXxHiFRtOY2zWf4XtiLPWZGAvLMX0gbp3At
         pD7+fBaLqn8XHeKrng9k/V6eczcH7KQotwhFpfPyICNKNo9rGNHMu622UAw2EVVozjst
         PhSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533v4kk0eO4LGpeXmaveIzJuxMD33A6Cz5AHhVzn9yIoQJH1DXXp
	OlhqsuboGrDVbvXtGoF0ZsY=
X-Google-Smtp-Source: ABdhPJynf1E06Q50zYOq50T3lT2uUxUsIFB/Xfcc8GTxan8x2piAdZefO0ogVlFhWNpDdnYXPFtAiA==
X-Received: by 2002:a63:3fcd:: with SMTP id m196mr4920750pga.412.1602592810149;
        Tue, 13 Oct 2020 05:40:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc0c:: with SMTP id w12ls11356835pjr.2.gmail; Tue,
 13 Oct 2020 05:40:09 -0700 (PDT)
X-Received: by 2002:a17:90a:bf03:: with SMTP id c3mr26467772pjs.65.1602592809598;
        Tue, 13 Oct 2020 05:40:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602592809; cv=none;
        d=google.com; s=arc-20160816;
        b=hYqbyTk5SfxoQvZN2MGvGp/PbB4Wuz2HcOkdhOatwdCwywu5WeN2v+Hwk77onrTDlZ
         a+D1viJ0aXqvIiBSCZZUcMx6Aij3ti9w5Bb26JU1vtpU2rPXQti9UIV0ew0O2sbuI8bM
         43ipUC5hhMM7FNEpS1kS5MzHUD1oGgx0djtGYXWmVaSg0hL8++UOh9SMoD7FM2VO54ay
         y/8SkO7H3fSC8IGspZeE876BQgO7J+R6EeTRtIDda6MFpL/39oRVFp8FIJPN73Ndndcl
         NwQLgx+DQLm5ysrIrT84srI7KRTgH0yWKWaHBzFvP9i+C/eoQQGa/VZf+uHUxN4T5y/L
         /Ang==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IAvUP/SNXLFWxPseN2fkYDuXWsWTQevluoDNd3o/wiE=;
        b=jh4+X4Ai23M7A5s/M6xMh8drMMUX/o6a3aedMtir+sAEjlRCLgrW566kue0ae0LNQr
         /r1NYVpiX23mWSdr6rJN1RYyArtKv09n3FjuRTogItJTNu9Mdf4oBwFurkcQK3AYFyvU
         a9GqzLTn3ipmzCzTaEMGpb+GCHOnPNH/yS56HUW/jCoPdLfQmxaONaGRXXwAeXAWGsob
         aYXEkhiTtdi4bQ1q20OoyiROH8PO5K4gk/BQkMVyyrV9jg0blqJzzaoly2s1aEvYZopn
         F7tgn2rzkStDX5cohYodcQMPCcU3UhGvpoLdMSVU9JNX+wwMNFkMb/rBPdvvRYPGkDpd
         OHEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a+Je3JWp;
       spf=pass (google.com: domain of richardcochran@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=richardcochran@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id z11si501007pjh.2.2020.10.13.05.40.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 05:40:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of richardcochran@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id h6so17460156pgk.4
        for <clang-built-linux@googlegroups.com>; Tue, 13 Oct 2020 05:40:09 -0700 (PDT)
X-Received: by 2002:a62:6082:0:b029:156:5cab:1bfc with SMTP id u124-20020a6260820000b02901565cab1bfcmr5081745pfb.69.1602592809338;
        Tue, 13 Oct 2020 05:40:09 -0700 (PDT)
Received: from hoboy (c-73-241-114-122.hsd1.ca.comcast.net. [73.241.114.122])
        by smtp.gmail.com with ESMTPSA id i7sm22277297pfo.208.2020.10.13.05.40.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 05:40:08 -0700 (PDT)
Date: Tue, 13 Oct 2020 05:40:06 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Tom Rix <trix@redhat.com>
Cc: natechancellor@gmail.com, ndesaulniers@google.com,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ptp: ptp_clockmatrix: initialize variables
Message-ID: <20201013124006.GA10454@hoboy>
References: <20201011200955.29992-1-trix@redhat.com>
 <20201012220126.GB1310@hoboy>
 <05da63b8-f1f5-9195-d156-0f2e7f3ea116@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <05da63b8-f1f5-9195-d156-0f2e7f3ea116@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: richardcochran@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=a+Je3JWp;       spf=pass
 (google.com: domain of richardcochran@gmail.com designates
 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=richardcochran@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Oct 12, 2020 at 09:07:30PM -0700, Tom Rix wrote:
> calling function is a print information only function that returns void.

That is fine.

> I do think not adding error handling is worth it.
> 
> I could change the return and then the calls if if you like.

How about printing the version string when readable, and otherwise
print an appropriate informative error message?

Thanks,
Richard

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013124006.GA10454%40hoboy.
