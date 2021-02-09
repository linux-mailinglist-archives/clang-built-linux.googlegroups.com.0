Return-Path: <clang-built-linux+bncBCH67JWTV4DBBJELROAQMGQELUHYNQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DE8315502
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 18:25:57 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id y84sf4571267vkd.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 09:25:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612891556; cv=pass;
        d=google.com; s=arc-20160816;
        b=fCwJSe8surfI1A4TBvZ9F+kER7zJ3Qc4vqnASQJ0RQ4q1iY1HexIHo1/XY/fid4+LR
         2bmwyrSxaB6zFlTx8PUIIeR4yCfx+EU0Bt6HvX3OUV2jMXNVV2WRYzR5Wurg+ktTTny3
         IRLWxBfGcA1gXEkW0r6T93Tuh6ONvnGk0e3x14EP3IJTFNCk98slBi0smpEuJn1x9Njy
         cTW/+ZW1uGqHvefeT0lEUxw1gmjjqzah7P2yOe8zbqyHWY8r6wUsDZP2jYiKTnoPEczR
         4+EKmt53WGX25YtfxbQdzMqRVqQXPh3wWPAi8tUmsH4NjG2izFJPaXbAoMHoSY692ZoQ
         KSDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature:dkim-signature;
        bh=zR5qdyTF8n2cIVhFTA7LDSOTSznLXxYg22nSj+nucHY=;
        b=WYAvScgWNPOOKcxqN4orbn0qkLJtYnk0VBmr86UcRwKBUO6l5o4iD0mmNYugHhJeiY
         Xww1+p8oPi3U9N1HrUfyv7YmPlLXffbvkdr1rPRTKMWGudASXKQzfZjOwDaMiCg0hNLk
         WBFdlh9yZXZYEmjKSBd+9jXq2oCZ7OGH+qzTdirLIaJLzzGUjd0sxr3dcJ0wKf8YQbbw
         UZk5xojBryV5ZlpUgrgNpeanmfrFFpbZriKENt+XR/sD0B7qa4XS9m3GLYcM3wAdRa01
         TLOw1KV9nz4Pq8zy4SdaPkTBAZbvEEhz0UzpTwsKAO4YBR8S/iwCApH/vNVxt8BcFfyh
         xTYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RMresToG;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zR5qdyTF8n2cIVhFTA7LDSOTSznLXxYg22nSj+nucHY=;
        b=C2BuqQkZ50cVSe17X+yObutQ8D3YvqSZi6VbspOjuCk4Bezj2CiW6KWdMSR4qVCUJw
         blyYnuutwPE+cRG62Vb1t5oFc2K/L2cmkaEeXZ025tc0mOzlYO78W+b3PSiLqGsLuoAA
         8+CZ0j+eAYXveOCL1z88mFqwU2bL8wJmLuo89NrT1o6Wsx4+Gkmgj6TI0lhPbMleUGxX
         ZPZ0KhJrrW17HHCJOK7/I0W+3rS8+mtXeZKeczPSfZTNFFo/ROCsf3c5Vm0oaCg6zwuM
         bHfFPaVMiGv75/8Os8qx5uGpMChxBet6kD8eNp/6hbp1LTwuFz8+l/HotbwzBRLv+Krs
         HUaA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zR5qdyTF8n2cIVhFTA7LDSOTSznLXxYg22nSj+nucHY=;
        b=F+ZVMS2RpjWnU8B04F5VQT/or9Q0dVefts/MszpBWuucm1cMdTZALQC2OdcAuPted+
         KF7tjQHC53mcJaPvXy+jvieYMSDf76DEyf7IRFhi++1Ak7Ug48YaQujXJoPqRKnnPdWU
         ECPSQECdr8zYXfl0QcXL4jaX6Q7mGGjfoSmXNJ47GM798Nq2vCOR+iB5U9JV5InKj/B5
         OZmPmEI4Fe+RRSVdAyus3wabiZ+ld7++Ow5bl2RfVDJnqVvVGAeeH2bQ1zBd89RiSNzU
         xXLBPHcZffE1uItcJd6NlVin95s5y2TwQDy0U9weRIxAekmVTHks3lT4F4BkIOCGeqt4
         5PXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zR5qdyTF8n2cIVhFTA7LDSOTSznLXxYg22nSj+nucHY=;
        b=EuEPLeZ86TLzMqXgpFEP5ZObGW+qjS7OtwT2AmJp1DX7+P3deQWIMmCjFfYaXTY6YC
         6l3tNOXUrbpQPz1VSTlgsqhtW+v8MyuMd5g7q+8k26/lz1ClC7q/AOkxOrNbtQPZ85At
         hteWqjm5G827TnpK4RYDbq2SjvCPr8lrMdRwskzehTdwnR5xhfWULB/17xgvQp96O0FD
         beUMwnXanY1tAO51+IaPB08vIai1R910kGXd0yzgrlllXMJ9LunrtEP7+ClR6sXx8TaO
         R2bxihbltOqqbaz6y2BZp+tnpRhL2rfAuvJchhW8A5/3XNMspf/DA34txmCHMSIFB5/4
         cBKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CpNudc83YsRVdXN+ZZ1WNxtjNrWk+H3g87mpxISm3CBQOrNQj
	OsNr0mMjIKrAK+noRFakJoQ=
X-Google-Smtp-Source: ABdhPJziz8EAbiXcK2qbPRkCv4H24tbpgPGKXSPJIz2oDsjFN3aUq7vcNvev7dwDQIwyl4/OwC9Jdg==
X-Received: by 2002:a67:2741:: with SMTP id n62mr14635325vsn.47.1612891556615;
        Tue, 09 Feb 2021 09:25:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:106:: with SMTP id 6ls1638798uak.11.gmail; Tue, 09 Feb
 2021 09:25:56 -0800 (PST)
X-Received: by 2002:a9f:29e6:: with SMTP id s93mr14930395uas.113.1612891556166;
        Tue, 09 Feb 2021 09:25:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612891556; cv=none;
        d=google.com; s=arc-20160816;
        b=y4OukHl+PgRkBfIibF2X/cItjy/o2zs5yZXtYxB4JrCVzAfFFXyrx+6rPj71tTdTfs
         aZ7/i44smwQTKlXRRLvB+1OwC/Agj1enzAJvRwjY+QuTeRbdRnLSREsb2HWsHEd3E64y
         xhMYtQE2+daRv3B/cQQ1CwPfhQxevrBRP0EEv253drFJw4uwt4z9nZHposPG+qCfJXjl
         Such1VcZBR0a8HPOnUWUbXHiGJCAhnXjP89lItFxfwQEsZ7atYdZg5h5/y9U+FALs6QQ
         PlHW/t0ShV/ylqLHSvSVDb52sfKCu+MUybQOYwI6SK1DOFb7A5YtIquNQVKkj1lnoRZi
         KRWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=g/vrQ52Up6nhDmv9BQxILGeSipTIAHFyzFVx+ygDZW0=;
        b=fsSCDV+xSsR8WMvoyh/prwKcle1ALWmVLwPEjJLOciVBSDi8dRcvm1WMssh2BsskGV
         wjARilzRpprjD2KHTBF5IolKVOrN8zZVIA/ZhsQu7fONtEybnbGOVoApZyHAVS/E48Rr
         cKwHMNwZCcqvhMTa3HZ7t5IZyPfKDMhvqqCi1gQodRdGAFogNoXccaptFeWb1CnvLijN
         hNXrTefNURZrfmOLLUKuZtMi1kwMDrbL013whmzcAXCHg8VxDR7oU6LN1m5Eai7Ogpc9
         sgAXtCa6nMG8hV5hhf2WfWwmwMiKlF1bgF8JgVXb/qvJgjLJ2jPQxO1PGgfkijyyvL4e
         pPrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RMresToG;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id q1si1356982vsn.1.2021.02.09.09.25.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 09:25:56 -0800 (PST)
Received-SPF: pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id t25so12910734pga.2
        for <clang-built-linux@googlegroups.com>; Tue, 09 Feb 2021 09:25:56 -0800 (PST)
X-Received: by 2002:a63:65c5:: with SMTP id z188mr22167224pgb.332.1612891555797;
        Tue, 09 Feb 2021 09:25:55 -0800 (PST)
Received: from [10.67.49.228] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id v1sm9846248pfi.99.2021.02.09.09.25.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 09:25:55 -0800 (PST)
Subject: Re: [linux-next:master 3824/6048]
 drivers/net/dsa/xrs700x/xrs700x_i2c.c:127:34: warning: unused variable
 'xrs700x_i2c_dt_ids'
To: Vladimir Oltean <olteanv@gmail.com>,
 George McCollister <george.mccollister@gmail.com>
Cc: Souptick Joarder <jrdr.linux@gmail.com>, kernel test robot
 <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com,
 Linux Memory Management List <linux-mm@kvack.org>,
 Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>
References: <202102070252.HkjUQntk-lkp@intel.com>
 <CAFqt6zZm7rAZ=eqJWoWNojT-s+pmdnYL7MbbCPBE89fk6Q6szA@mail.gmail.com>
 <CAFSKS=MMCJySR3w0RfwY4uWi35VEGpLZHF2HDzRiHAP35iapNg@mail.gmail.com>
 <20210209172351.ovvf6nhhagbiwzih@skbuf>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <4bb90ce3-10cc-407a-2158-f860d535d728@gmail.com>
Date: Tue, 9 Feb 2021 09:25:52 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210209172351.ovvf6nhhagbiwzih@skbuf>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: f.fainelli@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RMresToG;       spf=pass
 (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::52e
 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 2/9/21 9:23 AM, Vladimir Oltean wrote:
> On Tue, Feb 09, 2021 at 11:18:12AM -0600, George McCollister wrote:
>> On Tue, Feb 9, 2021 at 10:33 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
>>> I think, this can defined under #ifdef CONFIG_OF.
>>
>> Was this robot reporting this warning for other DSA drivers? A lot of
>> them appear to use of_device_id in the same manner (unless I'm missing
>> something). Do we need to do something DSA wide to deal with this?
> 
> Probably not DSA-wide since we still have drivers that probe on platform
> data and not OF (dsa_loop), but individual drivers should have "depends
> on OF" in Kconfig as far as I can tell.

Not necessarily, there is a runtime dependency on OF being available for
probing but as far as building goes there are stubs provided for when
CONFIG_OF=n which allow the driver to continue to build.

Adding either an #ifdef CONFIG_OF or __maybe_unused should silence those
warnings.
-- 
Florian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4bb90ce3-10cc-407a-2158-f860d535d728%40gmail.com.
