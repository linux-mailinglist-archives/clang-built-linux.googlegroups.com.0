Return-Path: <clang-built-linux+bncBCCZL45QXABBB5O5YX3AKGQEKPF2L5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A041E88D1
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:22:14 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id b29sf3240544ilb.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:22:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590783733; cv=pass;
        d=google.com; s=arc-20160816;
        b=hPGixG/Q1Ip6h/VxDtDOsm/tyoy2wuuaoC+EIaBnNtPi1p6tEKYGNSzRPFTKox2fgG
         gihYqIhGpVjatrP18VHNzp7OfdPo0hCU7USUNUDSxyhO5OeES8MS8E28zCa6s5vlURuE
         AzYtc1HGuVNSUaeFrDKM3a+zyv4WYiiayaou+JFznTp7hYpzpGlW7WC7Cgdru543UHwA
         6xNSRzrhDZJLBeosd0vPVcCqO3RX1sFWLz5nte5egsMi3MfGaE2OGLG0OAGrZniPlgpn
         +nQIgbL86z7oZsF9+TQ5+SiATuy+msOUPA+kI4GVxUqYIwyGk7iRADrdEbujxtoh7Zdo
         N11A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=4TgSqknLKvTqIBkCWZdD01AQyT8jaQEEFi4XimGCGlU=;
        b=TArL0DHEobrnoQhqkHV9inR/ycAPrLObhcqRILcg1kmYVqueSf1Ue139GMWzs6jN0/
         Ks1ElFc/cYkzR3lgj3cM3nFbYmhrMTfmI9UcztUa5skgBu+Pn7zbyQOM3kSlpki4QAMA
         Zi0lPmzuUGxq5WJoewPHU5nC3fyXf729jd66ZXDpJO1CH/7PJYA9kwvJrMQPKXmyp18Z
         3x8b6ll+y6fAxlFYPLBChU3vMLba3jcrZ9ULZl0L2DgKn0gGeZasJNMzmg4dkxx38f9m
         0jDU3LBVaA1zFqyndIghwGjTOaA6i0oS+NkW5NAXPWajxsMnOiV+tkx9nibd8KsJjzmp
         6IFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=O1ILFI8n;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4TgSqknLKvTqIBkCWZdD01AQyT8jaQEEFi4XimGCGlU=;
        b=eNEE+mZXjN4v4kgSaD/zaIVDwjE52Jh2laW1o368EpqIgrjpAcxqGVV9BQVfquPlQz
         svcKlbGK9hcQaa4rIbtSpHhqHPAKUY2n0ibldAvKLynGgBS5eJKSu48ucpd+sy4DsL+/
         1PMhdJRd7X76RQs0eYRED5sPDuceKbG2ejYss+edIXjpsn9ofe1ihm/re5ptvj7QkrZJ
         2smWSmtsI84xD39zJ+xW/EtkstUxJ/pc9yJv1MB+o3/nucPu3UbvK6vHpdLHjNbwRhYN
         LRtHVn3wiVRrMl6uk7imnm9sHn7kam3Zywgga2yD2QwCQ/+YMTxz84JT/TrmL2He6Nme
         hv0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4TgSqknLKvTqIBkCWZdD01AQyT8jaQEEFi4XimGCGlU=;
        b=FHk4nMKq732j7JqDuvVHSjUJkgZYRJoeCFnBFdq89Lb14lAVcxbFhcRQ3LAVu29Rb4
         RRo06xq+XNFeFmjvMLrwRCMiCkX/dRxZrN1G78SylnU+SbXmvyCYhJNFC7yIqUHtl52M
         WEpWydFWcupnUuWesaAh9Vl+PxoI8vgFVWNfjDkrzriBZWgCs3KKQ2UhN1zN74tm/iYK
         kZ+jiMSN/2cF73V4oBwnSODllqBJYVqO4tW9Y388y4A8SI2D7P7qH8MwhwU5lwuUL/mO
         kVrkkTXY5RQYatYnkjoVoem51fQ4FGU3uruaFo5X2KsMU6a5ghjRUmq7FRSe6TwChz8H
         Jqbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bn897DohhgpZ0vdEtdXTbsITXYtzIqQp61M3uApD3ZIzByv21
	w8QyG6TGc4xWDffjV1SDuos=
X-Google-Smtp-Source: ABdhPJwNdHFotyYGXgsoEMpPrqGA/liaz5BMC8pZYp7PfqzoFjoDtFc8Y3gNKiPIi7Dfc9mkmwwB1A==
X-Received: by 2002:a92:6a11:: with SMTP id f17mr9554865ilc.223.1590783733122;
        Fri, 29 May 2020 13:22:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:228b:: with SMTP id y11ls953007jas.10.gmail; Fri,
 29 May 2020 13:22:12 -0700 (PDT)
X-Received: by 2002:a02:a80f:: with SMTP id f15mr9077026jaj.90.1590783732829;
        Fri, 29 May 2020 13:22:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590783732; cv=none;
        d=google.com; s=arc-20160816;
        b=KuK5zEW8xHBqqF+ByHOYbNyHQR4jDsn5y4Z6G/G1+lRjBC04fely7gk8v5UVkP658v
         99FBkI0POyCkEhiJOZzVSqwfOUNLVm0cxQk3JmQglY8TUBSc3E/1cAijc6NCE4nbCjAn
         Sy0odZJVZtGOt55bQy0iDojgYcYvCWtebEoWQleVFE35CZ5kKQhNVatjR2rGGP85nf/6
         BY5+RFG7ToF0eYvOO0T4FU2g4YdGY2edbj4HMQ3dNchHl12gEmVWTVbZBhdjXgywSEPE
         HOFnFnyLgTnhTkUPdPquwIbsWKxY7FJfdDEZ3G7Y+MA8JMGcNnnawKzKjuMmts3zs0FO
         ugvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=27+ZatDP3RQovQk4qdaOmfeyVOMajbGmTbvCmCTKoq4=;
        b=irJ8xxiW6mXZTuqo59p1HEbXayUledRUmonhEb1TLEg7UZz8ATo8Fk35HPTH1SCL8q
         iL1CC3SPH03fZ7Qah9JxwWwHAhh3j9qc/m9JPGPTe+C7KRnXuJZD2HkUbufPFEu//cn4
         8LQ0Et96c8jvV5ZxTRBrl2RvBctlqCHmEfau9sIX4VtHj1S6XmlCcGUKCluTs/36wGqU
         Jm7/kuRjHzChVUNZxfrFPd0i0IZrCxm0YtS+u2jAv6HPihpOjyZvdcnCE+tkZLhhsUBx
         Lm466rGQI+bHg1aFVHOTLsa7e7tHbzMTm+054jJb49foVErQgL6xoLMXrmjMqLW9/QAb
         SkmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=O1ILFI8n;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id g12si50121iow.3.2020.05.29.13.22.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 13:22:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of skhan@linuxfoundation.org designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id v17so2983005ote.0
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 13:22:12 -0700 (PDT)
X-Received: by 2002:a9d:7dd0:: with SMTP id k16mr7461301otn.126.1590783732425;
        Fri, 29 May 2020 13:22:12 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net. [24.9.64.241])
        by smtp.gmail.com with ESMTPSA id m26sm2736384otl.30.2020.05.29.13.22.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 13:22:11 -0700 (PDT)
Subject: Re: [PATCH 3/4] selftests/lkdtm: Reset WARN_ONCE to avoid false
 negatives
To: Kees Cook <keescook@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Prasad Sodagudi <psodagud@codeaurora.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, linux-kselftest@vger.kernel.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>
References: <20200529200347.2464284-1-keescook@chromium.org>
 <20200529200347.2464284-4-keescook@chromium.org>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <a5808685-88bf-2e04-1973-a9dbdb23f5e3@linuxfoundation.org>
Date: Fri, 29 May 2020 14:22:10 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200529200347.2464284-4-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: skhan@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=google header.b=O1ILFI8n;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org
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

On 5/29/20 2:03 PM, Kees Cook wrote:
> Since we expect to see warnings every time for many tests, just reset
> the WARN_ONCE flags each time the script runs.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>   tools/testing/selftests/lkdtm/run.sh | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/tools/testing/selftests/lkdtm/run.sh b/tools/testing/selftests/lkdtm/run.sh
> index ee64ff8df8f4..8383eb89d88a 100755
> --- a/tools/testing/selftests/lkdtm/run.sh
> +++ b/tools/testing/selftests/lkdtm/run.sh
> @@ -8,6 +8,7 @@
>   #
>   set -e
>   TRIGGER=/sys/kernel/debug/provoke-crash/DIRECT
> +CLEAR_ONCE=/sys/kernel/debug/clear_warn_once
>   KSELFTEST_SKIP_TEST=4
>   
>   # Verify we have LKDTM available in the kernel.
> @@ -67,6 +68,11 @@ cleanup() {
>   }
>   trap cleanup EXIT
>   
> +# Reset WARN_ONCE counters so we trip it each time this runs.
> +if [ -w $CLEAR_ONCE ] ; then
> +	echo 1 > $CLEAR_ONCE
> +fi
> +
>   # Save existing dmesg so we can detect new content below
>   dmesg > "$DMESG"
>   
> 

Acked-by: Shuah Khan <skhan@linuxfoundation.org>

thanks,
-- Shuah

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a5808685-88bf-2e04-1973-a9dbdb23f5e3%40linuxfoundation.org.
