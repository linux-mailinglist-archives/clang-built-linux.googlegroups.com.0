Return-Path: <clang-built-linux+bncBCQPVKWLVAIRBR7Z66EAMGQENSWDS6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2A53F13AD
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 08:40:08 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id n42-20020a9d202d0000b02904fc72900a74sf2324124ota.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 23:40:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629355207; cv=pass;
        d=google.com; s=arc-20160816;
        b=pQ5d19vzfYSmENDICN5GeZWzrFPCBDNo00bgGcqneptSlPJ20BGBdsE1l6THw9uvuy
         Lwlh1R/Auq0gNLbP20/xEyp9FTvlHOkM/RBZfS5DQcctNB/+SQVhwz59/BIBJQOCSCLz
         4rmpzc7vDIyYTTheHf4iStNQxCIZ6XYQaxEOi1GhRcF71f90u86rJ5a1qRrWAGY//bZb
         6SGK/Sm2kaildM9rDh4HvIbSs66zZvQn1WwxmNz2uNCh84sFYT0SIKF/BOWIYDEbZ7kX
         RLPOsvuKpw18s+NERcn5WPKDEqFEwajepAG2rQdwhoMByfmw1Dgg6Ym1ahIHofUKq8OF
         jHHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0F/4783iIzZAD24K2xtNxZ0bmwqEmRz0cA9mnEHNmQQ=;
        b=mGzlFfgWeAsvBShDdboBSYQjZihDe2wuvsIzesfM7JHFZkVVVE9pYkfxRAUtaAMUFk
         T/HzxSSNynwnHvpxB4iIENTQl4YKW1zEPgat/SCZeXydRsQZR2A6eX+NkCM8ZEHRsYup
         JHgUPcTVTEMVihdNJEsXtPKI5IeLIYHNK4kElCps+cxKBans5qlJTkNUZLwoMDoppBrf
         0fVHoMe8zhIH4zi8XMhdBbpS+qfuuQhiDVHDxs10hbbm1JKQssPAqUEvgOBuNwaNRZsP
         ENi+BMNrTkzNzcCdmpANRjVB9A+4bCbt554FQ5FpYZvR/daoM6AQAeZDeKtVtbxYxxKW
         kfiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0F/4783iIzZAD24K2xtNxZ0bmwqEmRz0cA9mnEHNmQQ=;
        b=Uo/Nt4h+SVQFlw+/HbO8Hu758V6joH/uGwc+fncQH9SaV7XK8CXkvh6CDyyNoY/O0o
         FX9L7FjHYEg/DFn9QZvm9WXgJCcu/HF1J/xmoSRclH+yOm1q/6N2nUtwWTHtNH3eSzyE
         x31gXC4Dx3Ho8Rk57EmyaHGYelxzKnaiLhIQ+IngFPLalBotXA91KPoVpDDJHJBTTx+J
         tPBF0WF7NoQGIqrXVhM2MuJRTOeesH1Wu5do8qmIg9I7EVZoD4egf/zY6JRGzpC//ott
         rn37m2VtCU//u2YJj4/9qdbzbOvB27pOdIvtKF9ZCzHqGq3jiu96lIZw40s1vd0OzJkh
         bOAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0F/4783iIzZAD24K2xtNxZ0bmwqEmRz0cA9mnEHNmQQ=;
        b=ZKxo9ePLikB35G7C8HCeRihfIjpcx6VctwbfWB2GuBkHleYs8tu3bBCmzMpIrogcUE
         qOD63vKS1Cy7tkxZ2kc3gq6pV6PKbFHy+PMGlyaXSmgcT/8/SiWdkFOi3C1mw19SSXdY
         L9Y9hY4gm5EsMD0Y8Lh7Q11OjTfMcW44HLr06aWLh4ng45uj8Py7pf108+GtUJK9d7Jr
         qX/gvSlTAHi2fnZ+mgN7U9X9jBWzxk7etkedWattNffPCl7bDJqP/7KJZ/RzY3IhhDeJ
         0Hf3l5pDyaBqdnjENBBG+1dt704T2uC6Y1YKAUhiZ9EVhii3cyKY8R6xLm1Hor6pmMbe
         eO2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cw99jq865c2vfQXJknOsxtjliEC9kRXSxv0vnSK3Rste8qRzS
	gUwNv8xwIeo+RN42WE2uJDI=
X-Google-Smtp-Source: ABdhPJyfsk4FVDHBm7FhlvZ3DzfzuvHV4GIMAjjhwjGrwR1kqVh8Z/R6856ugd3+RS3xmLgEGjxavg==
X-Received: by 2002:a05:6830:2146:: with SMTP id r6mr10468356otd.1.1629355207420;
        Wed, 18 Aug 2021 23:40:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:649a:: with SMTP id g26ls1257400otl.1.gmail; Wed, 18 Aug
 2021 23:40:07 -0700 (PDT)
X-Received: by 2002:a05:6830:3145:: with SMTP id c5mr1088927ots.211.1629355207045;
        Wed, 18 Aug 2021 23:40:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629355207; cv=none;
        d=google.com; s=arc-20160816;
        b=fSOxPr9ps4qP8thGIsMHtAYuVaXgvLYR9woAV2LgAHxxDj/IEUmlYqTpAbLCYUlTq9
         BWr/JxO5pbKu+Qzc6CV/Zyb40MfcGXhe6AHQlRgnmd96y8cicDMjM6weYY8kpaqTqucR
         g69cXZ9sNNvWz5ftA0xtvP4yyvfWhCQR6f1B0od0zhbA/bJ3owkbTLuuhmDqV5Ffwh9C
         NWtfkgq/ahecKECkswHHc23WhtCbpZeSCTmbEp7jhO1vl94+EHZn1sVZ0u4z4bsiyunI
         TiN0YnrD8uRtbzGRFWrsSsbt2j8R9wucoFPlreLmRENv/pvMYyZOmiTwsEDYwy55n0GY
         FFGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=mTnNV697HbO1l7YLMhxfzqaZ4EB20Vo2d2bW0DsV/5w=;
        b=H79GoLlMV6Cxohl/l4M6i1vqAZdrnR/8Sdp5CsP0cjnmwSv5Xwoy5Vy7VMg1gTYkwy
         lciN0Jk23pHA9h7LYHly444LeCfLIJ11VTh7qkIvi0HIwvXtmj5R2WCvbp8BqCjphjal
         53OCoyiBJqZ4UsfPGnqleWkHu3Up2r6gjvjftO4eOuB9Rfxv7yXKCaphXMOpt9hxSMpA
         dopku/6bCD3sGSRDx3gwHqBzVsi8Hi1/LYTYBlgFv//0P4IwpskKhH74AXOZOvhFzMJo
         raAn9G9q6MFnNSA52+dmIfNauuuX51R13V3mp9F/oyAHD/azORBA6ii6O/K970kB56kV
         1XfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
Received: from muru.com (muru.com. [72.249.23.125])
        by gmr-mx.google.com with ESMTP id b9si138972ooq.1.2021.08.18.23.40.07
        for <clang-built-linux@googlegroups.com>;
        Wed, 18 Aug 2021 23:40:07 -0700 (PDT)
Received-SPF: neutral (google.com: 72.249.23.125 is neither permitted nor denied by best guess record for domain of tony@atomide.com) client-ip=72.249.23.125;
Received: from localhost (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 7252680EB;
	Thu, 19 Aug 2021 06:40:28 +0000 (UTC)
Date: Thu, 19 Aug 2021 09:40:05 +0300
From: Tony Lindgren <tony@atomide.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Kees Cook <keescook@chromium.org>, linux-omap@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] bus: ti-sysc: Add break in switch statement in
 sysc_init_soc()
Message-ID: <YR38xShxaaEzNPxi@atomide.com>
References: <20210815191852.52271-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210815191852.52271-1-nathan@kernel.org>
X-Original-Sender: tony@atomide.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 72.249.23.125 is neither permitted nor denied by best guess
 record for domain of tony@atomide.com) smtp.mailfrom=tony@atomide.com
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

* Nathan Chancellor <nathan@kernel.org> [210815 22:19]:
> After commit a6d90e9f2232 ("bus: ti-sysc: AM3: RNG is GP only"), clang
> with -Wimplicit-fallthrough enabled warns:
> 
> drivers/bus/ti-sysc.c:2958:3: warning: unannotated fall-through between
> switch labels [-Wimplicit-fallthrough]
>                 default:

Thanks applying into fixes.

Regards,

Tony

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YR38xShxaaEzNPxi%40atomide.com.
