Return-Path: <clang-built-linux+bncBDZMNZPOQUERBA6G6DYAKGQEFOWB7KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE39138C91
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 08:57:57 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id v201sf10559583ywv.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jan 2020 23:57:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578902276; cv=pass;
        d=google.com; s=arc-20160816;
        b=uhRpULx7PiLgCOvvYIkpjcpAQSzyn5CWPsa3mki6bAw8jG9TcqkiT3lu0ANYU8CBgf
         i9dwi82GqKVkxF4XaErUzX3pTT4zb2jja9RovMbqSQ0Dq86Xaa3RDo277I6/n1B5EUu0
         Xsm4sTKszrDeeYCMaQcJue1e2Sqft/vyGa9OQRpA3TB8vSLBVkNhEgs0sX8izcB3Vwyq
         BaXdh9px2Y3ts4SYb4mYTPEHcq4Xf3OeOa71pLZOXz4J1wGe/HVNYmsOamlmd5WBttEt
         ubhDyLS+h658+dqD1/09I4EcQy8QjX5rwLcxClIN1TC/LmZK7bbYJXlmFIZRgpkR/zED
         MEOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=1TR3W2ATNBq2imBY466iYcY0JxFGY9O3Dl3n5iS3mNE=;
        b=gsGlSKtnPfg5nGZHzLMQf0Vu5K2OhkT/X6OyVdCLhOrGEbKFVEwhPLuqZEVPWA1XiS
         w21e7d1Y5Bqo8brbJDtlHYn+GX5BtqiZb7nih+6z8CRA6I81UNp3cXSpR3SVjKJQtyZU
         HFVZOxyIaU3+mrBYTl4VtijadXpIanmgq1BTkFzFAn26grEpbsJv7pm/J0CSyljT75IQ
         ku2PeWF1+0riCl1K31m8iAXj8mtS2UAHJCCNAwsOlyc3DqBaUCC0XQg4xg+kcdeicQ1w
         zQ57Qc47AN5Q9k6Z/PBeM0ryic9LLBph3am96n0+pDphBvA/7FWQJ1x8K4pOD1pOuQH6
         /oTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Geq4fPqC;
       spf=pass (google.com: domain of jthierry@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1TR3W2ATNBq2imBY466iYcY0JxFGY9O3Dl3n5iS3mNE=;
        b=JZzzXSyztBpV6+xOQ7GWTEdw4b2VUTyqEwqKXed0R1C+dZ5hEB2FpWHHosaWXWkawO
         oUS+gV1wNj1GaQFS6VBQYlKXDqT6AI7+waYsaFkTypVYX3KPhoSqEEBqx0BxHPezKhEa
         W7QTRxPgloEE32IIPeWN7KdqdsCgkDH9a8jXF3dyv/HFaygf3IaSeNasGVBeeqcx63m9
         ee5Yr/GIeqee9fdme8PGxPUyA/Tgm8Ll7Yn8dVabFz1gsZpvEGIf5vBTczetgJngM4j8
         E1NWknqarQj8P6qXWfJSMMJizwu/LJ1SS9f3U83k7iHVVcDWnvV9kll0Q2GAcfs67Zdq
         eCSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1TR3W2ATNBq2imBY466iYcY0JxFGY9O3Dl3n5iS3mNE=;
        b=GRerp9m0t4+UYH8laY/dzS4b11TWCrVG2lvsi7mNFWzgLopTqCE3kCwwBDUCHl5+Yc
         RscKcLqD6UnmyaWLr7uO+Exrnau91nGvKDbhiHqYenAyudRaDl4muGBGL1JslziWJfCJ
         HajTosGWHpO7C/3MEauwZXZxVK2gCq93d6i9pa0kjKm3zRYdwF113VEOuml5NTfER+8h
         goPXdOW9uRYHmvN7skEdy8EYtQASlBxsDS1R8nAKx0A2zIC7SFXhFPm8dZM4U0dK2K9N
         Jv+n6YHOaA3HT5Rb1NrGyPKHo2MDrpjLEtegtwtdYPzEVOjTvMt76rHZ1FM5uRZ5CTYA
         ItpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVvqObvyvsaLMWA+FfhOu8LbQm+y8wRk1EAxfz7tYQWnZ7uaPgJ
	9znx5peuAmIQ+6DA898L/X8=
X-Google-Smtp-Source: APXvYqyxigaUndhvIFqSn9Q1sSWx5XNV9Oc+xp5+j/ocN9PSPH+z+JR/kJBJIOT4eQXKafX1ZAS2xw==
X-Received: by 2002:a25:df83:: with SMTP id w125mr8706988ybg.137.1578902276080;
        Sun, 12 Jan 2020 23:57:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2c58:: with SMTP id s85ls75528ybs.3.gmail; Sun, 12 Jan
 2020 23:57:55 -0800 (PST)
X-Received: by 2002:a25:3481:: with SMTP id b123mr12892513yba.16.1578902275691;
        Sun, 12 Jan 2020 23:57:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578902275; cv=none;
        d=google.com; s=arc-20160816;
        b=Nhh8FVUGSpy+OsFO37fngFHMpEP4fFrhgT0761/BkI+7Kx76gu2f/WDLZ9z410rY/Z
         bXZgPfflNn1i9shED5hwA3z5ShmB52J3GKCwo4tU0Afswv2qLZlVhcHVYU2y+xotCsy4
         MR/sOrIC8I69Hx1tYt3SoFmvaaPlBClRcA+fIrt8ZoJB3YYAiciIPr05nUO6F1pHTgVb
         aKgxZ9Uba2M86z2MPRxJRu9LUa0qi0UoHDTNvGvXesvo/2/dLTek270TCMW0tQ2ptGx5
         Q2jOZv/Ok/vuxFOPDhVW7vjEok+lCEo47TJZK7C3nQYi8ybcZ801sQfVm8r74PI0lkYW
         Jx/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=WRCNtJBa3pAnVzkWFvQcFj8dlg5Kh5b/Y+kQmy5E3UE=;
        b=mdNrLof0cNYU5Zcpybm/zI9CbEOr8Kmb5TqyU24O0T+TydK09fHylqHbweUkFqJ4z3
         75sA8HJEZUBDXBE4Od0wXnjrQFBVauW0fdsTxcOT+DCEDdiFHNPigkxbRJCAp/sCrPU7
         VfHdkQ2J6Hlw/3tSU8cLzgpTw5d22QDnF8B5U6Q67gDxCYUA3lzuIMI3J1EGCzhwso88
         GuxOl3r4KZgdmCscDG/KQOM8+EU/6Gm3smzWwDFUd+5NX/9Jyb2U4hr4A4Ira0HJ8fpm
         jU+SWq5ahsNtyh9gXQTFGfLPAZ/2jnKSfpmPkZ+9GN0xcbNtvL9W14hb36SPRBTduFgh
         +21g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Geq4fPqC;
       spf=pass (google.com: domain of jthierry@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id p15si240661ybl.5.2020.01.12.23.57.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Jan 2020 23:57:55 -0800 (PST)
Received-SPF: pass (google.com: domain of jthierry@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-55-QjPOwrZeOFOn988XQV5Xjg-1; Mon, 13 Jan 2020 02:57:52 -0500
Received: by mail-wr1-f70.google.com with SMTP id z15so4666333wrw.0
        for <clang-built-linux@googlegroups.com>; Sun, 12 Jan 2020 23:57:52 -0800 (PST)
X-Received: by 2002:adf:b193:: with SMTP id q19mr16871560wra.78.1578902271080;
        Sun, 12 Jan 2020 23:57:51 -0800 (PST)
X-Received: by 2002:adf:b193:: with SMTP id q19mr16871542wra.78.1578902270852;
        Sun, 12 Jan 2020 23:57:50 -0800 (PST)
Received: from [192.168.1.81] (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
        by smtp.gmail.com with ESMTPSA id g18sm13034427wmh.48.2020.01.12.23.57.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Jan 2020 23:57:50 -0800 (PST)
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jpoimboe@redhat.com, peterz@infradead.org, raphael.gault@arm.com,
 catalin.marinas@arm.com, will@kernel.org, clang-built-linux@googlegroups.com
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200112084258.GA44004@ubuntu-x2-xlarge-x86>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <d5bf34f0-22cc-ba46-41b4-96a52d7acfa4@redhat.com>
Date: Mon, 13 Jan 2020 07:57:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200112084258.GA44004@ubuntu-x2-xlarge-x86>
Content-Language: en-US
X-MC-Unique: QjPOwrZeOFOn988XQV5Xjg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: jthierry@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Geq4fPqC;
       spf=pass (google.com: domain of jthierry@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
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

Hi Nathan,

On 1/12/20 8:42 AM, Nathan Chancellor wrote:
> 
> Hi Julien,
> 
> The 0day bot reported a couple of issues with clang with this series;
> the full report is available here (clang reports are only sent to our
> mailing lists for manual triage for the time being):
> 
> https://groups.google.com/d/msg/clang-built-linux/MJbl_xPxawg/mWjgDgZgBwAJ
> 

Thanks, I'll have a look at those.

> The first obvious issue is that this series appears to depend on a GCC
> plugin? I'll be quite honest, objtool and everything it does is rather
> over my head but I see this warning during configuration (allyesconfig):
> 
> WARNING: unmet direct dependencies detected for GCC_PLUGIN_SWITCH_TABLES
>    Depends on [n]: GCC_PLUGINS [=n] && ARM64 [=y]
>      Selected by [y]:
>        - ARM64 [=y] && STACK_VALIDATION [=y]
> 
> Followed by the actual error:
> 
> error: unable to load plugin
> './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so':
> './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so: cannot
> open shared object file: No such file or directory'
> 
> If this plugin is absolutely necessary and can't be implemented in
> another way so that clang can be used, seems like STACK_VALIDATION
> should only be selected on ARM64 when CONFIG_CC_IS_GCC is not zero.
> 

So currently the plugin is necessary for proper validation. One option 
can be to just let objtool output false positives on files containing 
jump tables when the plugin cannot be used. But overall I guess it makes 
more sense to disable stack validation for non-gcc builds, for now.

Once people are happy with the state of things of arm64 objtool with gcc 
it might be worth looking at a clang plugin (although I don't know if 
the kernel has any support to build those at the moment).

In the mean time, I'll do as you suggest and rely on CC_IS_GCC.

> The second issue I see is the -Wenum-conversion warnings; they are
> pretty trivial to fix (see commit e7e83dd3ff1d ("objtool: Fix Clang
> enum conversion warning") upstream and the below diff).
> 

Oh yes, these are valid warnings. I'll fix those.

> Would you mind addressing these in a v6 if you happen to do one?
> 

Yes, I'll most likely do one as I don't expect this to be a final version.

Thanks for reporting those. I'll fix them in the next iteration.

Cheers,

-- 
Julien Thierry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d5bf34f0-22cc-ba46-41b4-96a52d7acfa4%40redhat.com.
