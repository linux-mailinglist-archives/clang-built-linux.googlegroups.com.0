Return-Path: <clang-built-linux+bncBC32535MUICBBUVBVHZAKGQE26U6M5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF2E160D8C
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 09:37:39 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id z1sf11416780qkl.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 00:37:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581928658; cv=pass;
        d=google.com; s=arc-20160816;
        b=StlcnFLCwrILE2SkIyleSLwxPbxltEnNO4Bw+NgEvqy/kbmI+J1pwqPWUF53/XIpkZ
         kRb8BBbem5EA7MKrZx/QxtulcFWR9wrotARVx3an0wq9NuhqHkyWOcBXZxWywyNu9cpE
         3ACMljiYTnKBUrGLRpIQHYsWET485oxnxZZDxldFeATb2q6Rw4sDrKnAY8iHGe8LPBDH
         cB8TDjKOqONPxKGiaecLFLqvB6IUYVr1kMh1TUB0HvjdYRdg2MnO5HmIEJAZAA7QsV8n
         fTETz//hA1GYlkK3Gh+yauf3Kb9m4XGMTlP0y1muRRS1Z/ZACAfhzDZcEFiSU6XUTHxq
         5CDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:autocrypt:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=U1hwTUusO9m7Uscjpbi2+aTVVwAqdsq0ZoS77tr+A+Y=;
        b=E7eOl4k5/RlBRLF8K2l5qn+n0MmnlzSwMNyHtcbFDN50maq7pDGjefV+Ft4US70Nb3
         vmKL+y28wqksnx9/r5c4TY85iMAB3bi018cC3dFrz3zbe4KSKEOdss/9+JNW86ysNjRk
         w1wK5hYp5FiQAWtRK1glzZHr7lvwJOlD3O0zJlpyY+h/pYd6FVAcarWv5pwYatmVpDLp
         Y/9XQJorT+2C8u4V8sUo07CI6W6/spTkFqSHyCaX1Jg4A+TBIv10I/YwCS/be/dAap/K
         ytlTzQnQe+3F2hw/1z7rbkOuHoqKAJErHJ8TSmY1BlrOQQfCRhc0pZtU4iXTgRFEZMeW
         OH/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Li7EROkT;
       spf=pass (google.com: domain of david@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U1hwTUusO9m7Uscjpbi2+aTVVwAqdsq0ZoS77tr+A+Y=;
        b=BRczm2ZfvhmS9jMZseTCly25whX3l2YxqgdcMMaGAD/+a4TwqWOYNvx/bjE73Uby2S
         bpXInm1gfQifZ6YeQyFvzSn7A89KCugageiTb/AA5XR9Kh3MlLJ7CilVdERikyRKNTdg
         Si67pAny1mRbi7o2u/9CIzg42EiZZIqWdati9CylkjyKRYgk7BDFFTcyjCwwm0YaSGDI
         O5ztFadhXIMTfYioBCF/8LQ//Jrt3amlauEbf8jntCmXFhmi8U/AL3n9Lmd+V6nm0D8f
         eZcheM1B6C+31mHRqdfcwVGhCeE/KznmaBTF0Yy7gbvZQs9+YpwisbiOBOFaMYWPI9hT
         xmUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U1hwTUusO9m7Uscjpbi2+aTVVwAqdsq0ZoS77tr+A+Y=;
        b=IrOuYkA1tD1wo/i1hoik1VT2TDFAfaXOCPRe8mHLT9vQysB/BAYD1JFFGbNTBRNyk2
         ywMHDF4NpCDPqwouCnBkRAhtcYikwFo6KUMWm2Hyvk9N0jo0IyTWvHmAsbylwBwM3lF0
         30nrH/vAnJgc/zJyvDAGHNVBJ4kSaNcXeW5q4RgT8fFqeuS1HXDjtzl8FObLn1pKhcfn
         2L5KkOSst4yVOiEhqAqEvroVmEsLUN4gCQ+WjgqruZClrnOaDZX8mhZoPVYF/X6sDXA+
         BKmTCIKANDWmKC3HLeFPOUlYktwrjlbeFnhfCjRr6VfnGhO2ICXXjXOkcOxuOKgVIldG
         KVxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXqsyR+ZwzYpY8pRzAN5yOs9MZhSiPAVrna+4uSm9yTf16BGtBI
	uf2boz4DnNzRMdfdnvjAZjM=
X-Google-Smtp-Source: APXvYqzTuQ/irMiKMxySlsZEIE1w1UdaUw7DGuRMhckSHHx61JCcU4e/yRCtDSAN8V1SV1ZGj/45Iw==
X-Received: by 2002:ad4:4e24:: with SMTP id dm4mr11485938qvb.170.1581928658586;
        Mon, 17 Feb 2020 00:37:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1762:: with SMTP id u31ls3279977qtk.9.gmail; Mon, 17 Feb
 2020 00:37:38 -0800 (PST)
X-Received: by 2002:aed:2050:: with SMTP id 74mr12196039qta.217.1581928658214;
        Mon, 17 Feb 2020 00:37:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581928658; cv=none;
        d=google.com; s=arc-20160816;
        b=YynbSI3TgaX3lGQsib7/X+conFO/WohCTRo6ARiv+sTTgQQTPL1I5pnNGdS5zISwz0
         eYGU7mw7Y8eQuRWc6+Bv6LmyJhKpPq+OFtwSmu95ctneKBcSWTwVM/oCzBxfiaS5WVQR
         qr7aFpjQIBYSUO/lPnhASnzCetVMKWBlXPwcFJnBi/aYpRCOz3XlimWgfbb8Jf4bos1n
         kFwSquCfiLM6/66tZm0uca+9OSgbIhHGO7k12Y74qWZkpiM8tVla0/NNXgo2wr7JeDIM
         n/9/YGr540+jw5uoo0MuMGodCxSflIA6PuGBSG8XRa2TmQOFkR+hRWLYaXbxmSZIMGw2
         /LeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:autocrypt:from:references
         :cc:to:subject:dkim-signature;
        bh=a4qv6jGfL2/sACgLnXsbL0AdNtFDlUHL8ZObNtPqhs8=;
        b=cSnKcPmgi3TuklLG/bx+vfooCeO7qwsPC9sF7AYxoLIj8WF370gXfF7NIpe5A9IMeF
         jGTU8/Mrcyzexom6GuZpYNtuz9rPa8zeKK2slgfuoegCnPyKb8D/DCeqyPJBU2lWEveE
         wUMJdcceblQUGxcjccWBIExlVNTJGSywXuAXAlPEplibVz/cPdfQu4Dc7eZt8xTawy6P
         EpjGBt3xPxPjsUuLAM+ZTl0nFdltv63AUGhsi/rQe4wyJHXw2eA9T8Zvta045shQMYTM
         p47JYDZvt9bcF4gZEh2NW6W4IyvQCHlS1rBwi35npiPaied0RdTAu4X5IneBUZj79N6m
         PWQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Li7EROkT;
       spf=pass (google.com: domain of david@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id 76si666474qki.1.2020.02.17.00.37.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Feb 2020 00:37:38 -0800 (PST)
Received-SPF: pass (google.com: domain of david@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-277-p3Ytk7o5NF6vogThOIH-QQ-1; Mon, 17 Feb 2020 03:37:32 -0500
X-MC-Unique: p3Ytk7o5NF6vogThOIH-QQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 71F0D8017CC;
	Mon, 17 Feb 2020 08:37:31 +0000 (UTC)
Received: from [10.36.117.64] (ovpn-117-64.ams2.redhat.com [10.36.117.64])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DC9AF1001F43;
	Mon, 17 Feb 2020 08:37:26 +0000 (UTC)
Subject: Re: [PATCH] virtio_balloon: Adjust label in virtballoon_probe
To: Nathan Chancellor <natechancellor@gmail.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>
Cc: virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200216004039.23464-1-natechancellor@gmail.com>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
Organization: Red Hat GmbH
Message-ID: <c02f5eb2-386a-33d0-338f-afc4f8049c95@redhat.com>
Date: Mon, 17 Feb 2020 09:37:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200216004039.23464-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: david@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Li7EROkT;
       spf=pass (google.com: domain of david@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=david@redhat.com;
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

On 16.02.20 01:40, Nathan Chancellor wrote:
> Clang warns when CONFIG_BALLOON_COMPACTION is unset:
> 
> ../drivers/virtio/virtio_balloon.c:963:1: warning: unused label
> 'out_del_vqs' [-Wunused-label]
> out_del_vqs:
> ^~~~~~~~~~~~
> 1 warning generated.
> 
> Move the label within the preprocessor block since it is only used when
> CONFIG_BALLOON_COMPACTION is set.
> 
> Fixes: 1ad6f58ea936 ("virtio_balloon: Fix memory leaks on errors in virtballoon_probe()")
> Link: https://github.com/ClangBuiltLinux/linux/issues/886
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/virtio/virtio_balloon.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/virtio/virtio_balloon.c b/drivers/virtio/virtio_balloon.c
> index 7bfe365d9372..341458fd95ca 100644
> --- a/drivers/virtio/virtio_balloon.c
> +++ b/drivers/virtio/virtio_balloon.c
> @@ -959,8 +959,8 @@ static int virtballoon_probe(struct virtio_device *vdev)
>  	iput(vb->vb_dev_info.inode);
>  out_kern_unmount:
>  	kern_unmount(balloon_mnt);
> -#endif
>  out_del_vqs:
> +#endif
>  	vdev->config->del_vqs(vdev);
>  out_free_vb:
>  	kfree(vb);
> 

Reviewed-by: David Hildenbrand <david@redhat.com>

-- 
Thanks,

David / dhildenb

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c02f5eb2-386a-33d0-338f-afc4f8049c95%40redhat.com.
