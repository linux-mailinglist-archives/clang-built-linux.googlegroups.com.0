Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPMWY73AKGQE2QXFK5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3227B1E8D40
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 04:55:59 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id e21sf2122475otq.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 19:55:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590807358; cv=pass;
        d=google.com; s=arc-20160816;
        b=IohjZuIiTBPx8+8m6bkAqtAd+Px5qQp0KYkYiWxv2NFTLXpsOMGPbgVLdANjcKtD7h
         ECzeFiDxTIc+lTQttpiUAc+Xh6ElyGzt3WddthF2BqBkEhV9W0RlJ6rCfIFeKKs0JF/D
         JmlsCwN15JTmEwILcr4T8xaLvvRBIeI72LTu+InHZmgr3ell8iphX1Tf1ha6XASSizpA
         LG3hNtAuYJZrHz5X2HwhrKWG6NhGA11D/GjxqMoupmi8lZcmyPh0E4XfHg5M3sDu1h8q
         wfgYmCwE8J63bRQWpe6OpyqusFvdaI0nZ8uBuT+PpCw0cEDIaxxBjnNpf8/OO11pCg4T
         h+Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=5Z/DkUUBR9ad/54K2GqJKEVoHi/XQbVy449EqU+nvUY=;
        b=DdDQ5C74fEQoXyURlwGFd3EOdmmynCwqBjtRV1jcgcSdyDNbAG2YZvkmCab5p01s10
         ZlRRHqcVOgcNEk8LBBI5i1QLhV2HrJplQDWWXfnW973ms8mnLPUcehXbM0uiINQPQQhJ
         M2Y2s6GJyMf8JpMECmNbby/sltSGyZPQuSOTpzhdwQpUCni0QC93v9LI6whZlnRCyQsG
         NovBGQiuwUHqcuKpnl5+W0GBqQeVIPja384rrnL5FiBgmaxhfRL+KmyUuY9L8nypFxUQ
         okoPXIqHj6iTshS2scgEl7FkQt7yu9ijn541z6GJ4DUbCT23+MMrD4uqTCFg2jbbGAAb
         /U0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uwGG9xxj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5Z/DkUUBR9ad/54K2GqJKEVoHi/XQbVy449EqU+nvUY=;
        b=ss3rR/eMFTHuhQz6RLZtfZ1sU37yU28GL6Fk/axCE++T6PaGIXDv1vvLLdvjp/N3zn
         xkRf1PFl2y3ZJIP9NCvCMUDyRAgBNkBP9coBAafr5mHQp/3+3Ys4EN0y5uf+MJegtdRJ
         uKtptq/9L7JBHNslf/2OJ5LbSQn+9BmpNYSKwbM1ISvsHjzg6yuBpM1hNqKjBJVzyo5w
         GEl4wbWyr4Kg44tMHJlbPjnsv7ODaxIYXCAonCrIsujBknlg/nBVvqdcsOc7Cm3dVLp3
         e4BXMc40V6UC9PK9M2B7SV+FMEwxiiksMS4yyBpwwjGB1b7zWIStKvJo+eBFvjOSHhv+
         zvWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5Z/DkUUBR9ad/54K2GqJKEVoHi/XQbVy449EqU+nvUY=;
        b=r8X8VcGo1lBviEEpzIpkmgqVfDnJOzX04grmRdvVHW3mVhMQWNZrHdXo2PIL1f5T6J
         g0byhDY3/8+BRjB55eIctHjh1LNKkPDDq6a2xLyQ2WAX9o0cKdwbmK6YdUNiDn/t4LGe
         iNcBGwLjG1ZMFHIhC0siF+ACZN0fYD6ku1A4TW3b6LY3CeUq0EiT2hDpLYBCMO7U/WJ6
         DccRt5yBpgLu7Vp9Q7TjvnoYSFHuvDeDJwcODPk1PLcpN2wuQTpRxkiWyJZgRQXq9Mwn
         iLHfjgFZEI/gP1iRjYw88sMALB+7stAfqVKovj3/kWXN3Hk5uJoillYmdh1GqTN5zmzM
         bLZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5Z/DkUUBR9ad/54K2GqJKEVoHi/XQbVy449EqU+nvUY=;
        b=OVDlF2/o8GN3YF8Z1xT0FU2d0q8ZNl8Jt1t0IbhwzqhgkQlbd8ZVnmWHgT//x9xbtB
         oRZuZSrmU2jubAfYBP26f1neh1eddGP+MpwU+FMwhE1aVmWvFUZ3FEsiJTDPupSBgkJj
         vNh+0/PdL37DDEsp7NijfaIq3zHaxU9hWpwj103z2Ng8iWMrxsqJcMGFTooqN7MNvRae
         9QALii/8kQ2Ymm+G7xKBvzGE9qGGlGO1yoZfvpMoo6cT/QpJS64N1c8VdktFPRN7ZC1Q
         A6jCgB1FBl6IdhsjPjEMCXqz8yMdiVikZO6qNXOAHZKF4ljyYczDWLktWlVl2KMe2YN1
         bHvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530R3csP8t1WNH3Mz3qkBBOaH6KJs21YTzCDSO06jji1febG6ZWT
	wyj541AL7tPWGsqFwoAycds=
X-Google-Smtp-Source: ABdhPJxREPx38izhpmOE99oFQhSLqsiVLKqb//6lyvb/LxTYqDbNyBGh7gW1OK5CmC9BZf9d00SCxQ==
X-Received: by 2002:a05:6830:19d5:: with SMTP id p21mr8169084otp.122.1590807357919;
        Fri, 29 May 2020 19:55:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:502:: with SMTP id 2ls1566458oif.11.gmail; Fri, 29 May
 2020 19:55:57 -0700 (PDT)
X-Received: by 2002:aca:d609:: with SMTP id n9mr8480321oig.77.1590807357427;
        Fri, 29 May 2020 19:55:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590807357; cv=none;
        d=google.com; s=arc-20160816;
        b=ZQHrLfDDgOItWr/5TfCWTpFnRwsj6N6nJF4GdrjoP9kHoFzdH4OJPHfly030S33eRX
         ssD3IjhJIBEb/gDjgq2UsqK3e99rTHoQSIR+fG9Q+KxRZKmssG3yzVzwERJ7HjLN9BVi
         D8eN+qzlWJ7X+oLNb3p1Y+3qkMHE0DfIDrDR4+CNu5JhA46L6HRkc6D5pfZmLP/iN7uv
         VwysbXRshnV99cEMVBWT3I/tzbBii82bM6BA+I+butHy+G9LYQdleBs9j8NnuCvHjpsJ
         ehGULwpYkUTe0e2CRwE41TF1pJPH5YJyqdrCp2j9EquHrMGQhoCo2MMD0Bua2VgwBzVE
         vvSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CdjRzSLuSxdNQv4Fy/DVTwbAer3PT1/PyJX0XOYAdI8=;
        b=Z1mla4fqXp5faI7alRizkTKBg6TnAmnZA1abKj3BfbICDI6Kjb9PnFkTeul0NCESVD
         ZkzARDuI6mn9zzDI/FlX2QJqC7e+/UqIf4JAkWBVfvEfjFS1OGnJBTA3JLMIO3PKbWwD
         h9ljiPBy9topwy0cuP2qjE/Tw81plgyjqb7x2CfpULcfRCYwW4uy/inFlKUUpLGqytNH
         ZlRd8/0dG6FIv9Jvq6RUpiwSmJ5GATfJMwQO2u6/2PKpukXrh36cY1aRRMbR8AlI2UL0
         f7dk0t0LS1UGqVFMdkL7BgA0U73uqnkNdz2mU3iQzIE3AIGMgU2/KfLdkhcqzNmuRABR
         VCbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uwGG9xxj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id o199si685385ooo.0.2020.05.29.19.55.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 19:55:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id y18so149698plr.4
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 19:55:57 -0700 (PDT)
X-Received: by 2002:a17:902:8f96:: with SMTP id z22mr11361146plo.24.1590807356637;
        Fri, 29 May 2020 19:55:56 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id o201sm8932310pfd.115.2020.05.29.19.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 19:55:55 -0700 (PDT)
Date: Fri, 29 May 2020 19:55:53 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/9] staging: media: atomisp: declare 'struct device'
 before using it
Message-ID: <20200530025553.GA1367069@ubuntu-s3-xlarge-x86>
References: <20200529200031.4117841-1-arnd@arndb.de>
 <20200529200031.4117841-2-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200529200031.4117841-2-arnd@arndb.de>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uwGG9xxj;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, May 29, 2020 at 10:00:24PM +0200, Arnd Bergmann wrote:
> In some configurations, including this header leads to a warning:
> 
> drivers/staging/media/atomisp//pci/sh_css_firmware.h:41:38: error: declaration of 'struct device' will not be visible outside of this function [-Werror,-Wvisibility]
> 
> Make sure the struct tag is known before declaring a function
> that uses it as an argument.
> 
> Fixes: 9d4fa1a16b28 ("media: atomisp: cleanup directory hierarchy")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/staging/media/atomisp/pci/sh_css_firmware.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.h b/drivers/staging/media/atomisp/pci/sh_css_firmware.h
> index f6253392a6c9..317559c7689f 100644
> --- a/drivers/staging/media/atomisp/pci/sh_css_firmware.h
> +++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.h
> @@ -37,6 +37,7 @@ extern unsigned int sh_css_num_binaries;
>  char
>  *sh_css_get_fw_version(void);
>  
> +struct device;
>  bool
>  sh_css_check_firmware_version(struct device *dev, const char *fw_data);
>  
> -- 
> 2.26.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200530025553.GA1367069%40ubuntu-s3-xlarge-x86.
