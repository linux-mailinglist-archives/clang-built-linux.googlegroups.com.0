Return-Path: <clang-built-linux+bncBC2OPIG4UICBB7VSYH5AKGQEFT4LF4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F11525B8DE
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 04:48:32 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id dj20sf1000888qvb.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 19:48:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599101311; cv=pass;
        d=google.com; s=arc-20160816;
        b=a4i0RPbAj811JBcoghx5qU3RBgAsfPOTYkt0jvssvdxM8nBeBqM7erQAW7yMAGqJ/e
         C/8fsJVRQY+LmPAa6ctdmKXdJHSEOHoZAkh3Hs0y2ThmfBJ8p7qfSvT2L3lePaU8saVG
         UiesEr3GjKMZbkmNxKmS7iProY01cxVDFXUWZ336LayxFstzncO+t6RfN+ms/9BGnvb0
         PG3wNKWNX2zKKYxwALq/aVTXUW4n12SUSTSL0IsxioXgE7dBFPl9ysgQdb+WgUQc3qqA
         tbCGHqbVUCX1VkeiLwlPSfpO0n4kR9AiTWVlN0lAwARFW9LNNIUGIOb+a0yZ9YwoM5mp
         QE4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Dn3gWs6/8tRdNRBrjYbXVBeWO66siH5hfslD3XEepJI=;
        b=Vfp5i51MIggyVgzWeNQK3BNWKgTzxEVHwU354o8px1Dp/e6UVpk+f8Tn0XdZWauQHO
         LacSnsWQnU6MOR1GpCg9SRAMXpDdyavOx5sQiyCWNTKdQM309JXH6YNCJPBEATW7fCrk
         SzQcXUvYSJaaPZcJAWqFmWPggXrqNpkqoweOR9vnPoWaPZ39PJpVJr+iET0iKrr0OV3V
         JjRJLwesVuYlFO6FvQAR47bsLlokPlYRRCi/lxXzBmpJMWGirTdwvSKPX5iD924DPg/J
         z09g8M2yx8KhmMeJDpvPFr5N81VKiQ6g5mQGLqqeCg3ytwh6cihompZ4E7d+PWJ86kGU
         Q/8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hdanton@sina.com designates 202.108.3.164 as permitted sender) smtp.mailfrom=hdanton@sina.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dn3gWs6/8tRdNRBrjYbXVBeWO66siH5hfslD3XEepJI=;
        b=c7xVWAprRp8T/Cg4Xky4nG8IaX1dj2ROcpAKfmCGGaI2m1BkOL2lzLZn4NjlkXh46o
         O2c9s2Y/2sXFIxr6gt9gTEBmrgQV9FyCswTa1dHiexD8J0EKyttdf7nl/IcPOG6jSDfj
         5Piz2bs8bZvyQIG28ivEhx2NFDTnW3fPtzPkmhQ5YbRCEOzqKMjQLeMD/K8dTLzKrxvp
         U5aHCXO6GBqmuSqKNPub7J5TqA0JkyXKxvJDGaLW7SBN2WvCHHPjZ5Dxik+YvVjN9a7v
         jCB8XlP/pRDT8Di7vfWD/L4ovKnKmftHU7fbSvakt+6z2V6etww52sjso15DQ6+TAY/z
         NZRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dn3gWs6/8tRdNRBrjYbXVBeWO66siH5hfslD3XEepJI=;
        b=gQbgAYA7izoP+S/0HHMSIWd8TsROdZNF+n2Z2PH0TLsIlI2ZwWMlukPM7aE1cJm0+E
         vs9khGJSWvvXBGjVcQ/UuWIMxBXZZVRGAPGdRT9igrFkXZPj7ytC3WwlkHPwxBGFZ+Iv
         19hz1f7zqCeUKApX5SjUR0Xyf0jZaysr46Ns/aDnDKGETIb/NH/CzMKAZgJV+crHKag3
         Vo9OkIUwyAz5Rer/1Pzmss2CIPRXAzNFgPTNi19wtitM3k+NT1VwPM8goN1NkCDeIm0+
         N4DSxQmagFhlv4AcZa4IXhB+heeMp0a6KD5OKswibJ2Kq1wdi5IXV+x8bZvteFu8BgXv
         6U7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530F53+3ippEl5TgFRs26LrooYhNboWsq1anOsoE/U1dFkMN+rRb
	fXDpsCPWRzEp5VpfPm8o7h8=
X-Google-Smtp-Source: ABdhPJyANgEcraS5SC0GVPeUiLOD5/h0Ez/s22+23bT1ar6AgCodCh1VbD5+afyqlVc1xxyVSZwclw==
X-Received: by 2002:a05:620a:5f4:: with SMTP id z20mr1176807qkg.260.1599101311295;
        Wed, 02 Sep 2020 19:48:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:f50b:: with SMTP id l11ls2249131qkk.6.gmail; Wed, 02 Sep
 2020 19:48:30 -0700 (PDT)
X-Received: by 2002:a37:9f86:: with SMTP id i128mr1109969qke.475.1599101310645;
        Wed, 02 Sep 2020 19:48:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599101310; cv=none;
        d=google.com; s=arc-20160816;
        b=F6bJMecY1d9cIrOT50kY3tCc0QzDPfb71ZLSM0AlNdy7lIKq5+Uor94ir4z6Fnquso
         Tih4O/IbScULsNLL9u+ub936XPP4wYyoHik1jYPdVvAGeHo+wrLENBJwC30NKxv7PQKZ
         MiZyOwW+ipf2xYfMGWSGETTvEHmfMahPnq8WrgZlyeYZaj0b/DXTxJLDLDWUVKtqrv7+
         MLjiM2gPXSfoErk8mtcU52j9uep4KGd1KlyGtCu9r0YpjwJurdm+WUh7WanP6qIMISIe
         AnyKtVfUTl073wB096WM9TzPKWN5gGeaIyiYuew+KXEUsJIMugRm+rMMM8foPdAYtDXw
         UokQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=V/pVLMQxVuGseCQOt1vcQ47YUEJKym7thqAda0C6A5c=;
        b=XKAJ+PLyEXhLsQuhdnpSRcfJZ+UzjgQ7pgSBkpFywjXRHqKwg18c+JtSnkrggMSuDC
         jzFVvtIyhdx7+elRTEaj6zSOLcyRmXODUtL5rMswyqN6meBIZhE0ECMnLUz/rrJnVLmq
         e++j57HjyNX54CtcLBY9YVJybQrawIgkYNBRbgB8FfLWlhjS2gG02/PsjjWWuYbajr1e
         wVI88asvWC2JT7V2nHvBnsOvliTKBUMqAJk5mOOrJToxRZxg6npO60zOPhf+4aLkEEvH
         ye2yIPvlL8Zx3ObksaUvOhjhRQfzq0XNqHWOBJjeQk4YTaYomPJyw4VQzeTov5PEFTr0
         UttQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hdanton@sina.com designates 202.108.3.164 as permitted sender) smtp.mailfrom=hdanton@sina.com
Received: from mail3-164.sinamail.sina.com.cn (mail3-164.sinamail.sina.com.cn. [202.108.3.164])
        by gmr-mx.google.com with SMTP id q5si89180qkc.2.2020.09.02.19.48.29
        for <clang-built-linux@googlegroups.com>;
        Wed, 02 Sep 2020 19:48:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdanton@sina.com designates 202.108.3.164 as permitted sender) client-ip=202.108.3.164;
Received: from unknown (HELO localhost.localdomain)([123.115.164.148])
	by sina.com with ESMTP
	id 5F50596B00017011; Thu, 3 Sep 2020 10:48:18 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 54947415074172
From: Hillf Danton <hdanton@sina.com>
To: trix@redhat.com
Cc: vkoul@kernel.org,
	yung-chuan.liao@linux.intel.com,
	pierre-louis.bossart@linux.intel.com,
	sanyog.r.kale@intel.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	shreyas.nc@intel.com,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	hdanton@sina.com
Subject: Re: [PATCH v2] soundwire: fix double free of dangling pointer
Date: Thu,  3 Sep 2020 10:48:01 +0800
Message-Id: <20200903024801.9032-1-hdanton@sina.com>
In-Reply-To: <20200902202650.14189-1-trix@redhat.com>
References: <20200902202650.14189-1-trix@redhat.com>
MIME-Version: 1.0
X-Original-Sender: hdanton@sina.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of hdanton@sina.com designates 202.108.3.164 as permitted
 sender) smtp.mailfrom=hdanton@sina.com
Content-Type: text/plain; charset="UTF-8"
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


Wed,  2 Sep 2020 13:26:50 -0700
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis flags this problem
> 
> stream.c:844:9: warning: Use of memory after
>   it is freed
>         kfree(bus->defer_msg.msg->buf);
>               ^~~~~~~~~~~~~~~~~~~~~~~
> 
> This happens in an error handler cleaning up memory
> allocated for elements in a list.
> 
> 	list_for_each_entry(m_rt, &stream->master_list, stream_node) {
> 		bus = m_rt->bus;
> 
> 		kfree(bus->defer_msg.msg->buf);
> 		kfree(bus->defer_msg.msg);
> 	}
> 
> And is triggered when the call to sdw_bank_switch() fails.
> There are a two problems.
> 
> First, when sdw_bank_switch() fails, though it frees memory it
> does not clear bus's reference 'defer_msg.msg' to that memory.
> 
> The second problem is the freeing msg->buf. In some cases
> msg will be NULL so this will dereference a null pointer.
> Need to check before freeing.
> 
> Fixes: 99b8a5d608a6 ("soundwire: Add bank switch routine")
> Signed-off-by: Tom Rix <trix@redhat.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
> ---
> v2 : change title, was 'soundwire: fix error handling'
> ---
> drivers/soundwire/stream.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/soundwire/stream.c b/drivers/soundwire/stream.c
> index 37290a799023..6e36deb505b1 100644
> --- a/drivers/soundwire/stream.c
> +++ b/drivers/soundwire/stream.c
> @@ -717,6 +717,7 @@ static int sdw_bank_switch(struct sdw_bus *bus, int m_rt_count)
>  	kfree(wbuf);
>  error_1:
>  	kfree(wr_msg);
> +	bus->defer_msg.msg = NULL;
>  	return ret;
>  }
>  
> @@ -840,9 +841,10 @@ static int do_bank_switch(struct sdw_stream_runtime *stream)
>  error:
>  	list_for_each_entry(m_rt, &stream->master_list, stream_node) {
>  		bus = m_rt->bus;
> -
> -		kfree(bus->defer_msg.msg->buf);
> -		kfree(bus->defer_msg.msg);
> +		if (bus->defer_msg.msg) {
> +			kfree(bus->defer_msg.msg->buf);
> +			kfree(bus->defer_msg.msg);
> +		}
>  	}
>  
>  msg_unlock:
> -- 
> 2.18.1

Looks like it needs also to release the current buf before putting the new
one into place.

--- a/drivers/soundwire/stream.c
+++ b/drivers/soundwire/stream.c
@@ -665,6 +665,10 @@ static int sdw_bank_switch(struct sdw_bu
 	if (!wr_msg)
 		return -ENOMEM;
 
+	if (bus->defer_msg.msg) {
+		kfree(bus->defer_msg.msg->buf);
+		kfree(bus->defer_msg.msg);
+	}
 	bus->defer_msg.msg = wr_msg;
 
 	wbuf = kzalloc(sizeof(*wbuf), GFP_KERNEL);

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903024801.9032-1-hdanton%40sina.com.
