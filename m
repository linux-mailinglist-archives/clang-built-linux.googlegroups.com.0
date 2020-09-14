Return-Path: <clang-built-linux+bncBDRZXY4CYYORBUOY7T5AKGQE5TQABWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 725BB26874F
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 10:39:46 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id x17sf1633957vke.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 01:39:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600072785; cv=pass;
        d=google.com; s=arc-20160816;
        b=K2z+9eSAZX9jPtNzsiZubz+X1iMPrBmEz/EQyHXgeBtnX1aok4c8e1AHrMy26WpedN
         tOJV6pNg4HEtcncP0//e/GVGcUZrPgVbfdvpgq2CuS5DCUW8mbPmH5Y1oirJUctPJKdB
         eZO/DRO0so65piANj5/eN1e9SB7xPcb7OAeIdO2yvF38MMYyteXdFsvuXHs3sm5BcDPi
         UiQAaB021CXKNqTSgP4GfyKy9vhljCbP1V9CLEcFE4IuS9xZHtnci7oc9dTm/K0HqR1m
         RTrSZQBaagxbM5tnLSgCnXBJkeGZI3jpbSCjqWFRnXNlAXLmbJSO2v/3XUIfXwkWLyM2
         yCHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=fendK5SWCDm5956GzrHW2LAbO0BC1zglBtop4Q92FkA=;
        b=rY9HDXrKK0OTr+mnev42CpBVDi9hloBZxqkYmvVgYcqtPn51TB7wg1fwB8KQ/79+IS
         eOR5aqhQMrEre2vj7/O+sresV/+KPbXyHtF57Q2236iCUZIiyLpmClM+xp+oAD2ITS1/
         ar9H0are1UIxpUaGCK3r79NEWdcDg7iM9KY7/y3vPEIDyrsSG61vMMxbd8Ofpm80eJvJ
         9FFGPb4vMiZI3Y/v5BdLTY+9LgeWTiDGuABUzGkd4z/Z/fAQU5jmJpAErjQWxRFJJ4e2
         i3rBsItH8q+D1GiB0OYBvYFTp9C/SBnzdTQLyAfH6bEffVY7/hb8FZe5pvtsD6tO12Hd
         20pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dXNxKjjZ;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fendK5SWCDm5956GzrHW2LAbO0BC1zglBtop4Q92FkA=;
        b=SP2KBUl17WZPyuW7ATEOx7Zngb0sm8IkfsnFWARM3ELz3bQspnyhdKXHJUhsfjL7fm
         syz9xHyTeLEewlOOv+AOJBkH/F05sxu37RZpqMz/KjotHaHkp1ZHQwW3Lj8MxqxpAL11
         DoB5l1C90bY4Pp9ugXDYqCdTHSAYKMtCflvfn4EuF2FY46Nr6h0p/JcbfseVMRXRM6Rm
         AEfWRKH0gMgfsHaTFkRsA4HZ0RdVjpjwjilJHvYJubeViWvWDD2s+QAcXh5dzosOX4vO
         E10UpEwH1IuOkSVfvCurQbyElA+8DCW8qmZkVKlU7RjsT1Jkoms9YL8JltBtz5XzPB6G
         nNCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fendK5SWCDm5956GzrHW2LAbO0BC1zglBtop4Q92FkA=;
        b=VYXuRrJjsF0ibnhtz7e3OQJG75np2TYbbJdRncxMfPGpRryvp0/5eC0eb/D8h7GzvX
         q+qP8jPzZjHfVt+uEut5IsGqgSri5+shWG2zLBY2k5wKU2aU9frY0eXrBedtemrcb0+0
         niWnnb4OCwfB+OpeGHt+orF8ESUYWSI/0cmcr1rh7r5QRZUPmQSjQB9fwDp/97gf+Qy8
         i6AN/8tzEyJGuLbW1QZPCgKM7Od+7vaNFcfFrHSgEUox2s7ewAEbZkN5JEtc/BQtDaL8
         8EVwdv9rha4wlFKZkpWZ2OZ8gQZ0LMSz/akJjfBDjVoTe8EKtlZ4YS7jUksV63xfGqNn
         8gdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530q/SbKZrb6t/EUPb3OiB+r85wT7K3UbfBxPCtJUDuexKuqV0GV
	32lycNRCqN2u5MiCJDhdLg0=
X-Google-Smtp-Source: ABdhPJxqKHR+azrkGnNC43fL0kYWxnTb4lUdoALROZVucKE29neDyAvMxFyImVxGLPTE77w8V523iQ==
X-Received: by 2002:a9f:3e87:: with SMTP id x7mr6436955uai.34.1600072785409;
        Mon, 14 Sep 2020 01:39:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:874b:: with SMTP id j72ls1048548vsd.9.gmail; Mon, 14 Sep
 2020 01:39:44 -0700 (PDT)
X-Received: by 2002:a67:383:: with SMTP id 125mr6959679vsd.9.1600072784794;
        Mon, 14 Sep 2020 01:39:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600072784; cv=none;
        d=google.com; s=arc-20160816;
        b=PdTqslFR8hCcRux+e64WDMG8BzRvvGnCjztpqZMU9yZz+11Wx3MMZU4C1sd1LUPU29
         GabQWthKGmDM2KqdghBBAse81vJYrlBNhNLyCFzEeQgY//TbbpS8TfSxLyGp5dC/xuZh
         /PqBU5Y3Wz804LvoB+6WZkesF5UOINQrHXFe73QJRnzyPSC913XMUqyO7kx7eWleXpbe
         TLflz2IrQHO5+kVq/BUf543NszHwOd/I3cxtn2Om68tflLcsLiFA7xFxW24iXBLlxiO7
         YNB+qw4iZd5PhhqgX9Bna2Z9GOoi0d06UoorxXqOUzBi9ntQj8OZs1l5nBjy+3ilbBo5
         LTsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=oCnbyPYtJnKEy5YVojzV65Y7fbgg+Mn8uVF7EIN9WS0=;
        b=Lqkl4IEgTEvSadRQ5VMjzYDV8uihHmUKc6tMIVvEEi/6X0/yGCdzT85pe3ezt67lz8
         Bo7FbwOP9lZXR+6Nk2rQrEEpHh58j7X3EQ5acKRNcWodN+hvXcjASV5VymWEmC+9EMjl
         HQ9ztnsjkjkXk6ePf6l0K6ZY3+VrnzaE/OtnKGxiCY16yAmUaWWHDgvsZ+jL3Sg/g1qk
         TuCslcuX2t/7KxXbFFUzysO8DGoJq7o6MMQifETZH1kreG+YHsrJyVzksDQKEHQ3AUzn
         5bivncHzinj8toYochDkBcpDxplo+wR8GlbuFaw/LvS28mOOLdaQG0SQGooaqQhp61b6
         S30w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dXNxKjjZ;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id y65si689577vkf.1.2020.09.14.01.39.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 01:39:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-8-D7xS1f_FP7mI6fsiJcGtkg-1; Mon, 14 Sep 2020 04:39:43 -0400
X-MC-Unique: D7xS1f_FP7mI6fsiJcGtkg-1
Received: by mail-ej1-f70.google.com with SMTP id ml20so7716126ejb.23
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 01:39:42 -0700 (PDT)
X-Received: by 2002:aa7:cc8d:: with SMTP id p13mr16650052edt.136.1600072781162;
        Mon, 14 Sep 2020 01:39:41 -0700 (PDT)
X-Received: by 2002:aa7:cc8d:: with SMTP id p13mr16650038edt.136.1600072781005;
        Mon, 14 Sep 2020 01:39:41 -0700 (PDT)
Received: from x1.localdomain ([78.108.130.193])
        by smtp.gmail.com with ESMTPSA id jo2sm7137504ejb.101.2020.09.14.01.39.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 01:39:40 -0700 (PDT)
Subject: Re: [PATCH] platform/x86: thinkpad_acpi: initialize tp_nvram_state
 variable
To: trix@redhat.com, ibm-acpi@hmh.eng.br, dvhart@infradead.org,
 andy@infradead.org, natechancellor@gmail.com, ndesaulniers@google.com,
 len.brown@intel.com
Cc: ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200913190203.22238-1-trix@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <a20bfbb6-65d4-2aef-1b78-15af329d77b4@redhat.com>
Date: Mon, 14 Sep 2020 10:39:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200913190203.22238-1-trix@redhat.com>
X-Mimecast-Spam-Score: 0.003
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=dXNxKjjZ;
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Hi,

On 9/13/20 9:02 PM, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis flags this represenative problem
> thinkpad_acpi.c:2523:7: warning: Branch condition evaluates
>    to a garbage value
>                  if (!oldn->mute ||
>                      ^~~~~~~~~~~
> 
> In hotkey_kthread() mute is conditionally set by hotkey_read_nvram()
> but unconditionally checked by hotkey_compare_and_issue_event().
> So the tp_nvram_state variable s[2] needs to be initialized.
> 
> Fixes: 01e88f25985d ("ACPI: thinkpad-acpi: add CMOS NVRAM polling for hot keys (v9)")

Looking at the code I do not think this can actually happen,
this can only happen if the poll_mask == 0 the first time
through the loop so s[1] does never gets initialized and then
the second time to the loop poll_mask != 0, but if poll_mask
changes then we hit:

                 mutex_lock(&hotkey_thread_data_mutex);
                 if (was_frozen || hotkey_config_change != change_detector) {
                         /* forget old state on thaw or config change */
                         si = so;
                         t = 0;
                         change_detector = hotkey_config_change;
                 }

Where we set si = so so then this can also not happen.

I can understand the static-analyzer warning about this, and fixing
that warning is good. But I doubt that this warrants a fixes tag.

So with the Fixes tag dropped this is:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>


> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>   drivers/platform/x86/thinkpad_acpi.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/platform/x86/thinkpad_acpi.c b/drivers/platform/x86/thinkpad_acpi.c
> index 47925c319d7b..24da8b6872f2 100644
> --- a/drivers/platform/x86/thinkpad_acpi.c
> +++ b/drivers/platform/x86/thinkpad_acpi.c
> @@ -2573,7 +2573,7 @@ static void hotkey_compare_and_issue_event(struct tp_nvram_state *oldn,
>    */
>   static int hotkey_kthread(void *data)
>   {
> -	struct tp_nvram_state s[2];
> +	struct tp_nvram_state s[2] = { 0 };
>   	u32 poll_mask, event_mask;
>   	unsigned int si, so;
>   	unsigned long t;
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a20bfbb6-65d4-2aef-1b78-15af329d77b4%40redhat.com.
