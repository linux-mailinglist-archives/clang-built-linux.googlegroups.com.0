Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBWWR3WAKGQEYXAU7MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFC0B7EF6
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 18:21:27 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id n186sf2597970pfn.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 09:21:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568910086; cv=pass;
        d=google.com; s=arc-20160816;
        b=NtcfpsVSzb3OSI/ELNnOr5YSKZczZPSohwK1kbskfqAu95Dy5DgX6ZHajqypal6o+f
         7Jpvr4LoVgPQCq7bGia7DgD6NvGXr3GehjF7lOBnIf/3ifahQkUYr8o6Dlh+DcO/pMu6
         YOtqOaeE2sFMmWSm5VVJ9z2cKHTCA8IZvJ9XPDXOk2XCNIgtOX2FbnUFG2XBn9tXbCes
         3V9zqCulmDzwS/PXB8mHVFi7Vt1e4AKFPJEVZUtU0e2O2qA46IRv1GNDkZdGNsZpJ3Sy
         LehRP6hOizwDlBN5hdAgWjKk1TOB6A20RN71aF7rWt3atrqE3lBM1Uz3L8sKFSW1fImD
         FmBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1WY7yh5TaaFYKXsSlD+As5WRge4ff3JdpWv45BIW/uU=;
        b=fLBOQ4eH1S5ooLHENliinEgWU/2WmqP3/eTYfIyWM21CEox1PjvD9SzV2QmuA9SdjV
         HfQzvzNHYQhJZ7it2ZTQnTYe8u8AKKo+iQY2rPrDOLCteWuQ9AerxQfqp3KQ+zYTvUYC
         3EvN13nn5TSy5960z3OhcLGekOSq5gvaSvv5cqytS2lC4/pyb1XCN9GoKqJ5CEOiAEYK
         0jWVJxDMSwemt1nZcLKKk/Yp9RDBsihqOcxBINmuwWYIZY1adZHeoocAlP15QxURlnNf
         Zpyq3bKG7BqaIHbH+yYP6ZyH1cDUPbOcUyNVKFQYSx3/aCm866BWmQGEdQx/ICCWkkmy
         Pn/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jMp6N6eF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1WY7yh5TaaFYKXsSlD+As5WRge4ff3JdpWv45BIW/uU=;
        b=Fa5oE1A9m5Ke8s/9Cou+e8LYke+hRSPaMEz67P+Tep3zNTIDjQSVZFKgE1a6bpHb5E
         7NIezQr4eTaiyo1a44wKg25oPk64OEmeTPdjHlpPpjMA5gI2M2xxQuu74GiW08qfGQOz
         5t76yNzaOy5FRKMTJ2hMWTkErp13O1RTbgWD5h2xlgiAtHPatbxfNMxgx3CUlHhlHABT
         RulsdFSGbfKVaBuul+pAljWM5Ia973nxRLVHmshpbwseSQAqama2tjvEJPc9kAdQzJcX
         fxRXHy0Axfp64eBgdG1z5puk/JTJ5Zp1995+LtxqJFC1+JN+r08iFYN5Qnzg76G4bGKT
         hKRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1WY7yh5TaaFYKXsSlD+As5WRge4ff3JdpWv45BIW/uU=;
        b=ayPXX81WHk3WJyzeUcB+ONXA0hkhKx369Ug6hPC2Sy29b+gka6U+7LQWk+wfWo1oUh
         6T5ea+afteByQPBfAABgTIswqZAgbKKWtQTqU+jPFYaCteCtFj5kJ0hGRjcjU3vWHvr6
         a59lJkhSlLjQsKnBFglxngTg8ow3vKXMYIXLcfE6+lc7bn1WMjPLN6dMvE2i49B3tIsj
         SdEu/DaEiCPWmLKlwA6YRsxNSQUuhgR+2d0rFcKpeNVt/I8JKp4LqjF2yFJZLF9xkWvq
         BX1fp3FhNGUELDR0mLFi2zOxSdbhrYI6ejWuu8KpBowTtWEYHlUnUqzcpDdT3htk8Ojf
         Ugyg==
X-Gm-Message-State: APjAAAVHw8XRajzAZK2r+bxGON1z/Bk12ATB9yOXvcmltYKPBC5y5HXh
	p48Fye5VF3odsySPhFkF5hw=
X-Google-Smtp-Source: APXvYqzObmKT0hlYJiA0VZ6xmEpR0uaPXoHCOZj3OxVsIBLQGOIleJ2D63KDnkr0UXJV8bKwZLsTdg==
X-Received: by 2002:a17:902:7790:: with SMTP id o16mr11124580pll.154.1568910086269;
        Thu, 19 Sep 2019 09:21:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a410:: with SMTP id p16ls1146513plq.1.gmail; Thu, 19
 Sep 2019 09:21:25 -0700 (PDT)
X-Received: by 2002:a17:90a:617:: with SMTP id j23mr4763378pjj.130.1568910085959;
        Thu, 19 Sep 2019 09:21:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568910085; cv=none;
        d=google.com; s=arc-20160816;
        b=WUVo24WLuMmPNjb7xJgWr3RFXyJVSVgHGG+zabr8xUA5NgdhircZtvbdqxiTetfhn3
         DKY8NEJZFlKK5Ymgthl9DCj+mye4CmWNk+wwtkdbFm7GYOAJNn4yrMi3ZU7sHsSuyjKi
         PT6I6AQvHKkZi8WBFpoFBtV4slE81bH/s5ilo4NYQyzjAQoxlXbkvJHMLHOl0zVW8po4
         eq3jwjnLM2MIsI+BPZlxohj51xsTlgY3ZsItA0C8eGAvDDouGI5YGlsVx/GTFPOKLgsx
         J23q86fCybcPT/V7UghwoPyuwU1hlIkJGWIw5BkWMFKMkm2QGE6i8GRnyU5K62tAXtoY
         pFGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DLElX6prsemmI7+wc0Ol+UL4D1Wa4vwan9SjKgoiFhY=;
        b=NgJ+GQ93tbcfSTyOjTWsGaPfjh8dsd9lXvLqG+0+mCckmD3+n/V0ylDs0gDQC45mJ4
         W7Pj7sxOTp0JggRGiAoGFCZJMWt3maqrY+PNjiB07OGgtoyROeURH7fNvKiG8KzVQ3jl
         4ej18coVTG0RxyHpJXU8aMrcJ4MBb/HH238R00Ly7Um2GzgMRAi1DRhROGEzCZzBLh59
         SOmrhbH6p1t/HxtPt3E3G/e22R/xzKs1+vXFXbQNI+RbSThPeivUzyXD5c2cBNzGmGnH
         OIXjVRWiPmXFQ3yWQSWtvKFos1BFcEzYR8aE/watFTiHEszcxqKgqW6vGOgGHPCuqLuF
         CsMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jMp6N6eF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id y8si710102pfg.2.2019.09.19.09.21.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Sep 2019 09:21:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id 205so2658406pfw.2
        for <clang-built-linux@googlegroups.com>; Thu, 19 Sep 2019 09:21:25 -0700 (PDT)
X-Received: by 2002:a62:5fc1:: with SMTP id t184mr11250186pfb.84.1568910085164;
 Thu, 19 Sep 2019 09:21:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190919135725.1287963-1-arnd@arndb.de>
In-Reply-To: <20190919135725.1287963-1-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 19 Sep 2019 09:21:14 -0700
Message-ID: <CAKwvOdn=qYoBnsXrGh8KDaFzy6WEsfp1RhoZZQUHHL4OFzx88A@mail.gmail.com>
Subject: Re: [PATCH] block: t10-pi: fix -Wswitch warning
To: Arnd Bergmann <arnd@arndb.de>
Cc: Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Max Gurtovoy <maxg@mellanox.com>, 
	Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, linux-block@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, kbuild-all@01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jMp6N6eF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Thu, Sep 19, 2019 at 6:57 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Changing the switch() statement to symbolic constants made
> the compiler (at least clang-9, did not check gcc) notice that
> there is one enum value that is not handled here:
>
> block/t10-pi.c:62:11: error: enumeration value 'T10_PI_TYPE0_PROTECTION' not handled in switch [-Werror,-Wswitch]
>
> Add another case for the missing value and do nothing there
> based on the assumption that the code was working correctly
> already.
>
> Fixes: 9b2061b1a262 ("block: use symbolic constants for t10_pi type")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reported-by: kbuild test robot <lkp@intel.com>
https://groups.google.com/forum/#!topic/clang-built-linux/awgY7hmSCCM
Hard to say what's the right thing to do here, there's not a lot of
other switches on this variable.  That enum value barely even shows up
in the kernel.  Since this is no functional change:
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Thanks for sending the patch.

> ---
>  block/t10-pi.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/block/t10-pi.c b/block/t10-pi.c
> index 0c0120a672f9..055fac923946 100644
> --- a/block/t10-pi.c
> +++ b/block/t10-pi.c
> @@ -60,6 +60,8 @@ static blk_status_t t10_pi_verify(struct blk_integrity_iter *iter,
>                 __be16 csum;
>
>                 switch (type) {
> +               case T10_PI_TYPE0_PROTECTION:
> +                       break;
>                 case T10_PI_TYPE1_PROTECTION:
>                 case T10_PI_TYPE2_PROTECTION:
>                         if (pi->app_tag == T10_PI_APP_ESCAPE)
> --
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn%3DqYoBnsXrGh8KDaFzy6WEsfp1RhoZZQUHHL4OFzx88A%40mail.gmail.com.
