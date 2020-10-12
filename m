Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYH4R36AKGQEYCIM3RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B22DC28AC03
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 04:24:33 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id z18sf9672927ioi.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Oct 2020 19:24:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602469472; cv=pass;
        d=google.com; s=arc-20160816;
        b=vD2MwK55aNlqeSqe+AMVYW4AWuY0KpSRD5+dGE6Jtf+eO29mE1Pxar5vgYV7j6kLrI
         dQy/ikxAG3NA6Xyttz0bnkxQyz7weGa+vcUMRa8xSwMWsKGzCLHEyQ00DVnrEqbCXu1x
         V+S+4k7z1pO6+1ZV6ddTrlg49mrJ9iniZ/9Xm6BzBTHxalg72fpMY13ZHnM/HYEnjeRl
         RcmSIa+fqxuhrzCAPUjs4g4mUxsVv5o2rDVGWk1oxQ60g13WZgt64CVQo6Eq97M7Ymsz
         R6ZnypHIp/mYcrfyPekYYXD9QEnp9ap0Dmv0RNKzq83ei0f4QOkq7QaBs9ksXhgp+99/
         dunQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=KeFRQU8puUby1F/v3S3dn/wTdUSXrQU3SOJdTbsb/nA=;
        b=NKpyNTLJzua9ejhVT9semABWLT3SsVjYxeNZNUa0pqNPabDCNWimaKonV/q0fKUmy6
         /jkuhfFSPqDkICnlygnbQ2xh/IA01jHdwks/x2LZR4JNphznMOyplY+gBEuBdqdSeQuS
         APbyagidHobA1fUQZZsSSzxCFU+A039y5enzV66JEGJQzXdSQ5ZgXSh6juots1EGeV7M
         i4+FhjoeQbKr3UrPporQMrxm3+o4tOXkxL9Q7fAXsnlaUCgFcXfd2PdVS0jWd/W8IksR
         5HqMuC30cLs+CpM970a0E8iIMkId1IPsVGaMDCHdEjjpAlTabjOLs1d8B30q6UKermaB
         XtpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RUrhrwlv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KeFRQU8puUby1F/v3S3dn/wTdUSXrQU3SOJdTbsb/nA=;
        b=HLZDVGdYwuWElw/b0gPmkjNP9pMloVqI+L0DDGpe80q2wBIdeeAbRijiWQh270Vgk1
         eIWzQHiXimJPT5xBJcZ8bJiA0bQSSUKRBY1RnDS4AELuu1VVx7J5SpIdiyxs9DvbraH8
         923jfDqJhgJVyOz/G7bOau1I0IxZf8U8xRrybxqHOAkIyOtne3WwAkpuFDthRUvgC2m0
         ljTAo6L3+IGpRx6fWjAgJQ2IzVjiyEsBp8bLOJCr3pON1H2yPp80rZa3tQcuBJQWGoWQ
         O8gA1PCrSvUT29SDfAkTwgoPcJUTfHRNfCv5n7AtO93pvrsZ1GO8tGBj149IGo3VgZLO
         PDVg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KeFRQU8puUby1F/v3S3dn/wTdUSXrQU3SOJdTbsb/nA=;
        b=S++J8D85D5GeJoabdbrnx90RBRNBOIcDqR95S4IagrrItkwHxfxq2ZaR+2RnUQJgyX
         7iFo1tIDxZ+xWqDE8tzAHwTqzH+YkuBk+D7cphKJLTCv7FbE2yeQpg4tJCHbWPBunlQA
         EvWw8g8RV5UZ+9ugt1ni0QFB2nglYRsbMgzJe/nag9d/YBGvsxxrzhhoQFwOhSq4yNkW
         2buAalbot64voRaiQ+zKNUgTUhLHX06G+FecFmr/1AknefSoja0Hl7GpKd8igSuGsTIc
         Obf7uA2i6Eu79xPCdNPHRdsXb74lWovmJb19D0TsK/RNmQxqwMcZhyX6MpCtfMVRqHWd
         9flw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KeFRQU8puUby1F/v3S3dn/wTdUSXrQU3SOJdTbsb/nA=;
        b=jC7uDE7HEHMMxsqrSwNxE+lQG0iIi6/c77CXen6/FnITTMxkkdZzsB3IwQUSSHk7Oo
         wnv9B3jPqE6J20W0JJN/411P7d2UDkItwEufDyb2G4j4AGj8kNVfY62IjPoFn8CKRp7f
         6/ii2dUk2b1sctdldWEY7BRQIhH5mRMstd60ay/B+lr8TllbBuQldGabF8nJuouYsn4f
         P0zvoOmbmqntIT3/U7vZtPgOyleK4yR1WHm9XGwuz+bQvlYsoBqYe7/0f/p/iLxyoHCX
         u9HSxig4LO//EevSaIe4RCTr4VoaLQO0KMAVYIFNEHTEXYAdubibZHWRpiwn4fGsEjAQ
         2jaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ikMpFCStFihxYlpOqBR6cnefpQBQ19OFcNc6yVkdwmg0LLz7w
	H4qJzwdG/mVs32Kv9/C60jk=
X-Google-Smtp-Source: ABdhPJzQxL3dm7R/jf4+YDLFkCocXRs+mKqL+Htcrb/dwtN9IyizpARd5hXWADfJOGywC0iP1QX/JQ==
X-Received: by 2002:a92:9a51:: with SMTP id t78mr9339357ili.46.1602469472303;
        Sun, 11 Oct 2020 19:24:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:14c7:: with SMTP id l7ls32798jak.0.gmail; Sun, 11
 Oct 2020 19:24:31 -0700 (PDT)
X-Received: by 2002:a02:a10f:: with SMTP id f15mr17490796jag.62.1602469471869;
        Sun, 11 Oct 2020 19:24:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602469471; cv=none;
        d=google.com; s=arc-20160816;
        b=XB46x9TYWmCZF0TSyxaVml0zGkQ6Mt5pbYRycPKRBShxvhG0nUN8JluUeX/DjhKJZt
         Q8SaYOHcRIZWyeIZ9cOE3lh1LajeWk7+gtkOBywIqJsWaKXgT7Y2A+HdAA0X9OZajnkX
         ziikgH21e60SoywYgDgH69Zaj8pBZNtVqDqLxYZBSR6Ic+mu+RojATLGlAECi7sXvtai
         4z9onZBsDEX5O1mfqJQ0aVQMNMGsIEhuwI2FdXjUQCdRi+L6QyjLH0l05aB12yuUx7rb
         1sN+VExejNZoKtDNCxySIdpH9CbbTZKft2d+SeEa8XbmxizHql65sMKKRPBmVI5RstPr
         f7pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QTY4U4+6Sbw73VZ7+xXUxoGTOblZuC8XJ4f2Cm9gN2M=;
        b=WdEm23QVuIvqOPkoAZYEx9hQI0fOGFVpzuJekRtAqrBoAmv9LLWRnLCH+N6HDSeaf3
         +vFWsQ07DlMBOL68dpQu4EipgNuqoropvRqYFWSLRriYV1K/MHIQpV2AI9yuQhmWE4XC
         6Ve6huuzzVqUz4yoxt3kA1wTU/Ofm3QNhtZHkP0M9gWFz7ZTitqcYuHA5NTCQDRWYsSf
         fev0nJUhopvQj0yiUkJk4uFmrFwC/Xcy6DHi4ONRG7XNiphILEDoonU2iAOug5JdLAV8
         wyM8ndgxe8iQyyNOXlZ1IPnhbO+9x9t8K65wovELakVWO9ds4N6fdRqhJSbP7+nmeatP
         PirQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RUrhrwlv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id g20si303062ilk.4.2020.10.11.19.24.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Oct 2020 19:24:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id y14so12827512pgf.12
        for <clang-built-linux@googlegroups.com>; Sun, 11 Oct 2020 19:24:31 -0700 (PDT)
X-Received: by 2002:a17:90b:1392:: with SMTP id hr18mr3040539pjb.182.1602469471193;
        Sun, 11 Oct 2020 19:24:31 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45e1:2200::1])
        by smtp.gmail.com with ESMTPSA id n67sm17206369pgn.14.2020.10.11.19.24.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2020 19:24:30 -0700 (PDT)
Date: Sun, 11 Oct 2020 19:24:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: trix@redhat.com
Cc: yhchuang@realtek.com, kvalo@codeaurora.org, davem@davemloft.net,
	kuba@kernel.org, ndesaulniers@google.com,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] rtw88: fix fw_fifo_addr check
Message-ID: <20201012022428.GA936980@ubuntu-m3-large-x86>
References: <20201011155438.15892-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201011155438.15892-1-trix@redhat.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RUrhrwlv;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Oct 11, 2020 at 08:54:38AM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> The clang build reports this warning
> 
> fw.c:1485:21: warning: address of array 'rtwdev->chip->fw_fifo_addr'
>   will always evaluate to 'true'
>         if (!rtwdev->chip->fw_fifo_addr) {
> 
> fw_fifo_addr is an array in rtw_chip_info so it is always
> nonzero.  A better check is if the first element of the array is
> nonzero.  In the cases where fw_fifo_addr is initialized by rtw88b
> and rtw88c, the first array element is 0x780.
> 
> Signed-off-by: Tom Rix <trix@redhat.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/net/wireless/realtek/rtw88/fw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/realtek/rtw88/fw.c b/drivers/net/wireless/realtek/rtw88/fw.c
> index 042015bc8055..b2fd87834f23 100644
> --- a/drivers/net/wireless/realtek/rtw88/fw.c
> +++ b/drivers/net/wireless/realtek/rtw88/fw.c
> @@ -1482,7 +1482,7 @@ static bool rtw_fw_dump_check_size(struct rtw_dev *rtwdev,
>  int rtw_fw_dump_fifo(struct rtw_dev *rtwdev, u8 fifo_sel, u32 addr, u32 size,
>  		     u32 *buffer)
>  {
> -	if (!rtwdev->chip->fw_fifo_addr) {
> +	if (!rtwdev->chip->fw_fifo_addr[0]) {
>  		rtw_dbg(rtwdev, RTW_DBG_FW, "chip not support dump fw fifo\n");
>  		return -ENOTSUPP;
>  	}
> -- 
> 2.18.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201012022428.GA936980%40ubuntu-m3-large-x86.
