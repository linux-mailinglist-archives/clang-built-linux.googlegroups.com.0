Return-Path: <clang-built-linux+bncBAABBTGTQ3WAKGQEHVCA3YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF01B5A2D
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 05:51:41 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id x22sf9178067iol.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 20:51:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568778700; cv=pass;
        d=google.com; s=arc-20160816;
        b=bmoqLovbE3Moubv0vRBWVLTDokM6tqSKBriMVBbLL0j5soG6dqxtLN1LeYDCtGXmAK
         jMpzqtTQhzEyqk8xyZHX+w1XJEOfXuAICUV8hBgwO+5OrflOWHEqjJXZ6xZkh3Pjv6Yl
         gCeSP36qUZ/6wq1r9lGu44y31aZAggHvPuh4s1sP7lSM5ccqmLhjjrnrx4mViM/xxRXJ
         yPN0boA6wUeQc2F3cxuI3Q7F0kz0eF2JTTM0Xc55kzP7RgGEIB0XRUshzIP/FU7arKT/
         6mxHGgXdzFJNa0cVrDRvDGQ2BPxwkLnD7yS8AQNmFLWRmqSpX5PxkSPlGBGzItx4T9m6
         olIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=5qGoZOfEbWpYWkJe+bIrTgp0P3YccYF1Au3eWFiexqM=;
        b=BgJS46aV9BigU0bsvPsu4ApX2W3TvpcVCjZ0gCKaXYZrAd3UVx0fsbPjKxcXRfkPcZ
         URhC3Tr/RjTM5LHtxX/FAHQtv9ahuIFz/lt4Gr1pjdvyi6VlRwu0JY6I44h3pLHf35vq
         TfBU2GmUi7+RmwiuCn+2mRY+M7QpnryptzX8P+FPaTBT2cKJJE5mFOYXVxoQvdHH6axa
         CcemGoawWn/67+KZMJIYJr7CkoVO9dE+KnZsjYqzMPshzTUZX3wkFl6v/4P6lMqufxyS
         S7IUlrzOurILMLV+r0BhykZUM82Yfs+m6bOD1P0KXS01WrwJLPS6YB2/20wUAnE9f+y+
         T+xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=jarkko.sakkinen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:organization:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5qGoZOfEbWpYWkJe+bIrTgp0P3YccYF1Au3eWFiexqM=;
        b=jCcVA/zQyJVklQfiuGPvO8XV3/9I0sKL4EcbO7G2vhXK3WTgKeVFM/q61Vv7dezhYC
         0ukXj1FQl0zXP6dMhRj9k5bJZew3TwPzyvp+IrE8NtIVz9Vw2EJM7VH8L1cKcIgU1ABW
         O5TvYij5ufE7Turc8VxWFeIuDJfx6UDI2YjVLDOhchfTSkfoBEizJ/xitaU9jdGC4np/
         iNgzJmE4exFV5mtmMps7VBt5fV797q0kHl/2b8HZEGZ3sDUHW7WkxXwFJrGL7nvYAkBX
         /E3dA0lfLC9sDxqd+eQlcl7DJBIluqMi+5bvczgvLXKpqm/iMur4fOcqMV0n1xJId738
         ueQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5qGoZOfEbWpYWkJe+bIrTgp0P3YccYF1Au3eWFiexqM=;
        b=JELM3ND27J8dlvaeDgO9mun9xMm/NkXNefqd7B8FvVYpaqnANqULa1mb8EnPYXhw+x
         pk2Cs1TWTKSWVqrQBLR+xnd2DJBelPCfCxVVbFGHPTbGVkkM+1EIP8Us/eB6fqKi5r58
         3QeNTjmucF421/YxNE7z6aMOUExmx91JKFvMNusZz/fDEVc3w0tYgOlPdMh29NwIpL+r
         XejnSeIwcKXN8d5B53kd6nOKf8tIgX0cJo/u/xzcj6bL7LP0aFuapJsVKOdqcxRLVvVd
         0L1adDIjX8cRBau4uiZxfZIBBI8p81y8CoTRAHsalCbi7KrCMorAhHVWgfI+o+xlQDvd
         djDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWA7tS3SmyfaFwaUOrxAFLHDUTMG9xMD+x5u+cxb4oxRN1TXOFH
	ArmcH4ROyFq7+I6CR1ly+GY=
X-Google-Smtp-Source: APXvYqyixfg1TpO5YoqHAz165c0kC1GwLoY8q26m24eS7/F5TLRQENAskawSXURQWfM39xJVP8Em5g==
X-Received: by 2002:a6b:1646:: with SMTP id 67mr2677958iow.11.1568778700329;
        Tue, 17 Sep 2019 20:51:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9281:: with SMTP id s1ls1469953iom.16.gmail; Tue, 17 Sep
 2019 20:51:39 -0700 (PDT)
X-Received: by 2002:a6b:148b:: with SMTP id 133mr2665934iou.81.1568778699916;
        Tue, 17 Sep 2019 20:51:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568778699; cv=none;
        d=google.com; s=arc-20160816;
        b=wLocL1iD5guatsRG8p8usIEluyf+leuhEramIxaubLsogbeDgFmo+q+3AlTSPZSZ9A
         ibfImyVK1RD9Vxhccl1jljPP/jR2p7qzB6zGumiij0N/S9p4MNyeyLJTXr4AYClOTvpZ
         ueMqR8RfMQFJl0VtiY9jxLzZyTMsbAkuZwvj5lLU3PI4CHeh32zVcwgJiP3iMKEiQj1J
         u9CHjPWwFoGVZl8vI1pevmVkuIUyU/xqPqN8LfX+0nl0TXY6zOMTGbCRYaJRQKNyBxL+
         Zdn6uAe0EfmabfxQyE5CsTh0UcmhIVrd9ytLYMMRK4uM4RgBF5fS91YReCjEqHWJfa1L
         Aijw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=CLxJ2tmaye0RuiAiiws1AqSxUEtD4Qym/CaeBNOcTfs=;
        b=o+V1B3EBl+2dXuHK0R8yECYSeC1XiOAmeqCzDRsDNXzMpq9xpv2Dasp05oUITOufsC
         gCl3ErEw97vNLAjhAJrF3ypTiWM3OYf33vr38nGDr8487jmbnUrbGm46AmXZj3SRsdhq
         LIVLDFBW805FKIzq8iqHnEH8RmVTUg34hPclwYun6j3gr94JEl3zeNJVDgZtGYlKEZAT
         kdrXhTubFiTstFObpGzQ5kyUR4CCFOcE6Ey6I5whM0wogTS+13k7jUwJcn2bk3xHnyB8
         6BRp2gNCojY7uz89LKM8UE5rmz82hhxQhW/n2jHcAFkqRoT4+giQAAxeO/2p7nYEBItz
         fBsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=jarkko.sakkinen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id q207si400523iod.5.2019.09.17.20.51.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Sep 2019 20:51:39 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Sep 2019 20:51:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,519,1559545200"; 
   d="scan'208";a="362059339"
Received: from mordehay-mobl.ger.corp.intel.com (HELO localhost) ([10.252.37.53])
  by orsmga005.jf.intel.com with ESMTP; 17 Sep 2019 20:51:35 -0700
Date: Wed, 18 Sep 2019 06:51:34 +0300
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild test robot <lkp@intel.com>, kbuild@01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@01.org
Subject: Re: [PATCH] tpm: Wrap the buffer from the caller to tpm_buf in
 tpm_send()
Message-ID: <20190918035134.GA21658@linux.intel.com>
References: <201909161845.7u7EM0JN%lkp@intel.com>
 <CAKwvOdktGCk0MDRvph_+0-i1qGyjfLe+NnC04iceO2Z=jJ5EBg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdktGCk0MDRvph_+0-i1qGyjfLe+NnC04iceO2Z=jJ5EBg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jarkko.sakkinen@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com
 designates 192.55.52.88 as permitted sender) smtp.mailfrom=jarkko.sakkinen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Mon, Sep 16, 2019 at 11:26:18AM -0700, Nick Desaulniers wrote:
> Hi Jarkko,
> Below is a report from 0day bot building w/ Clang. Can you please take
> a look? (sorry if this has been previously reported)

Thanks! Note taken.

/Jarkko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190918035134.GA21658%40linux.intel.com.
