Return-Path: <clang-built-linux+bncBC6J55FHVAJBBU4DR6EQMGQERU2T3PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA0B3F4DAF
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 17:42:13 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id w35-20020a056830412300b0051bae474534sf2827632ott.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 08:42:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629733332; cv=pass;
        d=google.com; s=arc-20160816;
        b=bG5pXfmDhNGCFylaG/iaquQRgZ0CLxpfKq9ryt8tcvaaO/E4CH6crjuSDDiLnBMP5n
         rz/VboCbO42lNXro6cyKTX411cfHReuuwpNjganTZHArp8eHCE19CCvYlx8Y/LO+eCH0
         HsTP+cHbhrMp3kpeqipyaf/7qex71ZAzUKxPaXM2Xjy4X8a8mCL+/95xDuHmAHhkXqOh
         jVccgCZmJuuhBFPn8bBrg7QlKWioVqdYPhlo0iP78qeDpwaxl0HG+uFE0g6qQgIfDcMZ
         7Rq/LgcLJQQh+pkyRrAtC9u1Ptz6G+p2sQ7DqgSSxXsOu62KrSXC4WhaSrPtwKtXChtX
         Ao3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=NmjDpwn2tfRYpl4Gq9M12KYLenFNQFDydt5ebHtiNzs=;
        b=yV4ylf30SosJAizwl5ZzkKk8HyWThA8tHqMXerYFHBL3LCLgUVy4qDeRqb0Ad8w/IB
         omJS2e5AB1vdpshNwohS1awZMFgUOwccE76BA80/ckL1ljxH6qRop+GCUyA2FDoM+C4J
         vh2L76khwsQroekpP5oVpviUJbo6OkEC1v0vOYE3Gvqj7SVC94xqq0ApptJIoJkqWlHj
         safDEPryGGdPugteqWkb1wvslBAtw1PYuvZ1tfAK6vyXyIUN2yVn8ak2+kRxfu9fjtXU
         /TD3SyOx+S9pQkFnQZDaOL4/5lMcccu4aEv3jy/hQ++kqcbuziSZRGgkAa9dXsHb9eMo
         fKqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VcdGY4x1;
       spf=pass (google.com: domain of tzungbi@google.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=tzungbi@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=NmjDpwn2tfRYpl4Gq9M12KYLenFNQFDydt5ebHtiNzs=;
        b=HE7PGqkE9nymAyHYcsa1/o8vI7AW/vrmrJuYnxoiITqzdHF1Zb8Ga+GCVU8yaH5rNS
         c/9i5ICmwvUUq7llg2k8G6McjEttzp2H8C4voj2A/wdhM00TJNEVxm6zOuX4pJ6gOFsl
         Uf3XMqYtzqwBqbwXaeNBX7Qy1JNxpcq+uz0HJjLfSsGVLdpcq2fREeAa+zWcHMVHj4rO
         lgq6XBIR7BcEWi3X2s7tRxfAiPTJtVZUjb/xx9oVTelu47A1nTUkckzsvij4bPLzxsjm
         JCcQYeKt0QSJTNaesnzQSJ7dgl7EHpxc0sNVeGNhFBDkm5Jo9+Sq8b4AUamWVUqS8cwE
         JtOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NmjDpwn2tfRYpl4Gq9M12KYLenFNQFDydt5ebHtiNzs=;
        b=LFEQDgeaWRPGZpRNvePsSnjcEZLmVjTEY5S/Wh1YsmoXw2mWCf5rVKiRfVo7uhj+mm
         CyOxsZ2kRmDpabckHEjSVmaZOT9RFlsEx3NK11v5sftz6aQXzyPtGsjwiPkIK8amlV3V
         JfnJ+Sfo05p1jRulDId/u5T4tEUEXRzCT5FMLpmGgPKAm1oQ6+hzVKYj7dbU0k58MsbA
         /Zy80nxGCkefzXs/KjyjMl5jNr6qeISNs44on3TQM0YEzBjwXQFUxAJ4tmQ/TlzrxJBo
         Vwg6pNN9M6xZvOEw899cwuPgLvS3I2fi0nl5R8BpWmCzlt6QceStMYB09vWZmlZCIJts
         By/A==
X-Gm-Message-State: AOAM531ZsNSJZaPtSASG1XJ0Iwa4CwxuFENBPQn7Rb37duhP3TntV69q
	Rap68Ns44MKh8B2eF8SgaDk=
X-Google-Smtp-Source: ABdhPJzaxzfrStJZmdxo2HT0QgW4l0xLc+5TlogJPrWoJ9gsVtGJxUqPthQosa4QIlue/de68UUYjA==
X-Received: by 2002:a05:6808:1442:: with SMTP id x2mr11592192oiv.162.1629733331729;
        Mon, 23 Aug 2021 08:42:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2a05:: with SMTP id y5ls4453335otu.2.gmail; Mon, 23
 Aug 2021 08:42:11 -0700 (PDT)
X-Received: by 2002:a9d:7a4e:: with SMTP id z14mr13824672otm.366.1629733331347;
        Mon, 23 Aug 2021 08:42:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629733331; cv=none;
        d=google.com; s=arc-20160816;
        b=AYnwVemxAJ47HuhT8FkAe0jPEmQUHMP1rPfeLHzPvE/ZSK3qTy7loa8+WJTXWnZilC
         nb2HZmNpR5By2huKcpxG+Nr+PBhwEaQ808Zu7Va8jMP5fC9fnkGt9qeKRy3OunRapo6s
         KZEz3CBxQT0lmlk5sMZIU0/+j/4r0S+wYgMG5rbXGUz335S4HQJXkOoMAynfWAkfkVsK
         3sYb3AyEybt/Kx6EVtShumWazliwXfjP/u1HdW4VFFmsdEcMgOgXISD4kjtpGTmzZsA2
         KSrVUhRSN/LEd8nBvjcaG8IXVwvnPnEyIPSDEDx5AchJsRPPssO9Oq/l9Sk+fZ2cc26/
         nEDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wba/Vd7Mr+gKjN+T6LlO1n9InijBDgXzejrbqJFDnsY=;
        b=pUcVOx6ZpabDcBHNCaQ2eNU659rU8mtwH6NH11W9fbzFbDjbC32bOEaUyHrGkLDDY+
         Qpn0QoYIZWceRNfBHusVDKm1chvdySET5oJyXa4w2gbI5fs5QgC+kRfvTSuJZc325i0Q
         a2upFUU6wAGlNFRbCqRp5RMaNWejjizajVIqLgiCUVUQDwvOSZCFPHIPajVpySuZ+izW
         NYrcIM/P25N9Cw0nXf4kRBeJdUGpZiXgHg9tRfxaP85YMbnMqwqEw7jlrzXdr+Y9aD92
         26lXE4s16JpwBGjs9It9idV0HRRyEchcxkL9XqJs23Z3aAcZCA46+FA8tpE7V7gdoygX
         NTjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VcdGY4x1;
       spf=pass (google.com: domain of tzungbi@google.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=tzungbi@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id j26si1378769ooj.0.2021.08.23.08.42.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 08:42:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of tzungbi@google.com designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id j4-20020a17090a734400b0018f6dd1ec97so251335pjs.3
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 08:42:11 -0700 (PDT)
X-Received: by 2002:a17:90a:f2d2:: with SMTP id gt18mr19064612pjb.187.1629733330679;
        Mon, 23 Aug 2021 08:42:10 -0700 (PDT)
Received: from google.com ([2401:fa00:1:10:bc5a:af6a:3f08:a084])
        by smtp.gmail.com with ESMTPSA id x2sm19608025pjq.35.2021.08.23.08.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Aug 2021 08:42:10 -0700 (PDT)
Date: Mon, 23 Aug 2021 23:42:07 +0800
From: "'Tzung-Bi Shih' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
Subject: Re: sound/soc/codecs/rt1015.c:724:2: warning: Value stored to
 'bclk_ms' is never read [clang-analyzer-deadcode.DeadStores]
Message-ID: <YSPBz0CzuAvVcHJy@google.com>
References: <202108231809.NOi9qOEj-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202108231809.NOi9qOEj-lkp@intel.com>
X-Original-Sender: tzungbi@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VcdGY4x1;       spf=pass
 (google.com: domain of tzungbi@google.com designates 2607:f8b0:4864:20::102c
 as permitted sender) smtp.mailfrom=tzungbi@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Tzung-Bi Shih <tzungbi@google.com>
Reply-To: Tzung-Bi Shih <tzungbi@google.com>
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

On Mon, Aug 23, 2021 at 06:39:13PM +0800, kernel test robot wrote:
> >> sound/soc/codecs/rt1015.c:724:2: warning: Value stored to 'bclk_ms' is never read [clang-analyzer-deadcode.DeadStores]
>            bclk_ms = frame_size > 32;
>            ^         ~~~~~~~~~~~~~~~
>    sound/soc/codecs/rt1015.c:724:2: note: Value stored to 'bclk_ms' is never read
>            bclk_ms = frame_size > 32;
>            ^         ~~~~~~~~~~~~~~~
Proposed a fix (https://patchwork.kernel.org/project/alsa-devel/list/?series=535979) for the warning.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YSPBz0CzuAvVcHJy%40google.com.
