Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBDW6QOEAMGQEG4I6WIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5883D874B
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 07:45:51 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id f3-20020ab06f830000b02902a95451351dsf937482uav.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:45:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627451150; cv=pass;
        d=google.com; s=arc-20160816;
        b=PCuaSJrQKV/Z3VWO+LczrOFWDVx5erZlZp2oK2RTFrb15yOWkAIdaMFruCdfIj/rpL
         FUpYH4nSuE1gLgRUKUr3OyCR26lIgn48oDsb03r8Ot2CAcD1FYASmAOlORN0iToPHY+q
         rh5a+Iue7m9vseK/vHjJ0YqUnrNM3uYiEJjs7z1qu0OiY0KWsLQmRe5DNScFU11J5GX2
         ef6w28a4gN6/PEt2zNlBIhqWlUh6qJc9xbuW6+kbwZ+mJrUzJ1YnAQV/eZKMbNivWbpt
         Pt7Q6hEuVPJyG9YeByvvr32BtlbIMQsd5BwYaao20XXEWuhkiHzSIN3i1h/NU5Q37ped
         uSxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=b1+oGWc0Sv+J/5RKYJGHkR5ck3viBLdIqnXhfDMlsoM=;
        b=K56DLztrYpEj9fff/PA+jE1wo4XsEAG7vZaiAAiEnNtxSd36UWuAkOes0N9zowtp7m
         aDRl9JLjmbm79uena68jEwghkZbt0eWEI+PAuyBGBQDmNvTAtiZF7iWnA51LJUKLEAus
         EP6ybznrawXHjfnGQsC8yGhElK0HwuZMv3adbLoxBCVsBoUK7/bj0ED3o6Zft9kVGowL
         yMyJZlNwALiSeCV9RSNyTRPMS3uyRVWt860AEon8hHXC+UKClxko2OjVtoptKhwJuZ1T
         rKLiVTU4BTH8BNsUbRe8jVPrxdk76loT1kH2yL366ZIqcka73/9I2lN04fk2e9d050Dx
         C5IA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=mTu0LkN+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b1+oGWc0Sv+J/5RKYJGHkR5ck3viBLdIqnXhfDMlsoM=;
        b=tELUJCa3Lbeb73CnVT82bvNtLsRq2PyynegzxAyb4xGd9HxRRDNqInV9ViCKhmlcYa
         zcY0y87qJlV7ryXLGZ+Fen/2XhXZZnQDx5aHkcdZ2Nz3xRmn+iF8D54u3/V3+iUmxmr7
         FCrtcu4OKlnkZPvbZu9ihLUpGEJpADXsUy6Mc/VlQpuvTQk+Wmmq+u0rNjKHVcfW4h1t
         rseEv/snS/taGLrGM8UTuifz729VhMS2pTJuM29hus0vRQluFktwoq1KgIiF8zjlipaq
         ntGfDX3k/Ku476pWLS34GQwu1cydlQ3624DohPkx/uO4NSKu/+pxMw+ds5dUyNKMjToX
         KICA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b1+oGWc0Sv+J/5RKYJGHkR5ck3viBLdIqnXhfDMlsoM=;
        b=tWHDlG8D+O2ZCbxXf+QB928gHGZhIFhrYJif0U6ZPihpvHJSszdKmcf+Xc1hwac4Zb
         rR0RtpONuysZ78t77pufqE0ZBctaMT8AQeGtGpaFuak0WDK2d+GWFMsIMqMjjxnuPZtp
         p+33j6qGCD2U9EBor3I37fIp9HatCTZ5W4YfnEZWr6KCdF4Q4767ywwpfXf3LSwgmAJf
         sNQ/6GwUta7MK2/j7t/qI+A9p9jzCgLjG+Z8jqfRHuQ52G0NXHRDsPqPg6/dZVMrK0t/
         6poJ7huOc/DpIpdqvhgFb4NVMQeHVLeI4mNKqsA2Qf3Q1zj4qA3MJ/iEGL3v1zBGGYHZ
         5AMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EGyu8hGmWPC5il08hXyaMKn2VqDqbc4d55FpobamgOOuoLNl0
	6u15T9kOzgNRvWzm9pYh33o=
X-Google-Smtp-Source: ABdhPJxaXyfuuD5Y00y9V1W94LEIaXzypvxq/QJpw68D+Z4pCVU9BCeIcF9Lkx8t2BVjzrL4sf055Q==
X-Received: by 2002:a1f:6048:: with SMTP id u69mr11172981vkb.13.1627451150819;
        Tue, 27 Jul 2021 22:45:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:36a8:: with SMTP id p37ls116958uap.5.gmail; Tue, 27 Jul
 2021 22:45:50 -0700 (PDT)
X-Received: by 2002:ab0:35d3:: with SMTP id x19mr21344031uat.124.1627451150365;
        Tue, 27 Jul 2021 22:45:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627451150; cv=none;
        d=google.com; s=arc-20160816;
        b=pE0GUvpQ2p//lO3kf2m9YzLbFuJMOasjPXsF7TO9498cHmUo/mvq5pKGruZmFAG1cx
         E3MSa27T9C71T67Qv3UmCsKCrRBqVp5BcOW60KByIFN/HmGmctzOvhhljD/CiIfL+/iA
         iGHpamHQjsz3rYAAQWYmeJrRwDjMTtcPkCekCgfhr0hEcy0aEm7SxxHj5e+wT7Pt8CxL
         FMTzZ3yvpxOo0asigAjMmEH2WgReB9PxaCpxTY/C4OmYtPcpp9cPH4tNRY9Oh0uAjlAw
         XdIgJXieRS31g1K1aClyBYWxQnG+CzKzM3b46ZxjQAMenvW9dTCV0dJygbB9IUwAAtxc
         hA2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=m/oGyw9PfUxPOtsb/j+8QS2GuwmwKah47oriAntVGbs=;
        b=zPjQsLbeT5cQNMT0lDrwkGJSHI04Pva1RhaiHm9YWen+olKYvj9p8LBrziczwbSGZy
         brp1CclJL2H2oFkkv17KI1miyfCHcnZA0JJXji8chQMxilJYkO452QN8XcVL8uNDYqAi
         leUa1m5lRdSoN8m4B+vECSVtT8HDv6vyf0MDvmlRnyBWYt7DKtxNNeSiU3svLVAWPweV
         lTrmK63RmITbdpHh2TcYXgQ8tN951BpLinma/DixWaNx5tvedPs85m+38IJN7mJlT6lk
         AoR2W2zrj0PSbn4FfJX24EwemEWIqiNIydDOyynl24baxVe+9n/aocM0+y3BJ8sVxYpr
         dADg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=mTu0LkN+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y18si441883vko.4.2021.07.27.22.45.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 22:45:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D74CB60F91;
	Wed, 28 Jul 2021 05:45:48 +0000 (UTC)
Date: Wed, 28 Jul 2021 07:45:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 24/64] staging: wlan-ng: Use struct_group() for memcpy()
 region
Message-ID: <YQDvC4CghCazix4w@kroah.com>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-25-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-25-keescook@chromium.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=mTu0LkN+;       spf=pass
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

On Tue, Jul 27, 2021 at 01:58:15PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.
> 
> Use struct_group() in struct hfa384x_tx_frame around members
> frame_control, duration_id, address[1-4], and sequence_control, so they
> can be referenced together. This will allow memcpy() and sizeof() to
> more easily reason about sizes, improve readability, and avoid future
> warnings about writing beyond the end of frame_control.
> 
> "pahole" shows no size nor member offset changes to struct
> hfa384x_tx_frame. "objdump -d" shows no meaningful object code changes
> (i.e. only source line number induced differences.)
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/staging/wlan-ng/hfa384x.h     | 16 +++++++++-------
>  drivers/staging/wlan-ng/hfa384x_usb.c |  4 +++-
>  2 files changed, 12 insertions(+), 8 deletions(-)

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQDvC4CghCazix4w%40kroah.com.
