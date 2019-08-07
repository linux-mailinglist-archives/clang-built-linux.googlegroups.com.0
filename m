Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAN3VTVAKGQEWGOCIGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id A387D8533D
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 20:50:41 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id b23sf10885949lfp.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 11:50:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565203841; cv=pass;
        d=google.com; s=arc-20160816;
        b=mngJWn2V2yWq4h9PcORfHQCE4+UMGVbFZNLbtBB31Gsn44ljG6XcX4aXmQW3Sa9f1t
         GyPcAgI+rnCrcI0JrZDoOHtD5gE0Sea358wIDDNf65wWHiCPuTssijANwuY6p6kejiBX
         UGnJWgHZ+WGVZ49TRnvS3OLz53tnN8duZ8njlkvNGWqz1Tkipq9jO790KcmjzZYkx3z7
         CPpy8k49qzcIBns5GfZRSSUnzx6nrzw7CA78JKbs5Lk34Vki1xw3FHCSkgjOPUcBtNW2
         4vZrzFZI52ZxP6ijqJYUuWHFz/+7O9jMqOYQLtQY+VdDzPLPkER/YPlkanFiKwLnK8HO
         xcRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=6G7hl7r9O0R95G9G88Q1ahRKWrbSawV1OBFx7ztpkLA=;
        b=JVBJN993z7O5YSixg/CPQQDrapFIx6kkS7XSW9PF8PBIhPyIM/jc1DNxAaopkuLXVV
         IqZtc5axYx6JZlEeFXM4uJ/5+glUKLMXgfp29DibsMqSP70MCDmScelHugntxOt5+njq
         HG1lR+T6cmnjFjG7soJvXiHhhzne/0czVrGRP/yxfwb15AnkV/aW69Mb5Bvpn130aMsl
         oUrCiQbHQVfiqacLyQHvuERYkziu9wInLiqxAvFxqgOySNXBx69KdArLX4Acp3eMNmse
         vSOAmMHnzBqDkdMLJJ8/rdXR8Sfm+e6jMLxwjOwTBzQDt6bKLl15FwRdHpTF3OBbOS+g
         OfUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m3n6XiEn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6G7hl7r9O0R95G9G88Q1ahRKWrbSawV1OBFx7ztpkLA=;
        b=fwnFZxSnzlbWvL+9dRMvPTLPURu7BJ2HFha0EbtfaBp9hQJrQzyudneJHOBwhcldMO
         I2M/FFFdAHUMBVVgnzSDia4j+WG2VS6tKyg/PUaGn5z32cXDciYcv4XwgL9CLvP25qVS
         TPPSR5gfjYqc15nX6DbQyAZXUyt+1vi5ojcVg3Cc9dPp7KKF0LnjHQmFr4GdhHPrruPK
         6L42GXxpkK319ZW46vwpPC7CT7mZ49YGpZFAKXw+Qrr1jRWjr0B+09KQy2btmK4wakCe
         cFBk2y/VOe2tubpf0RbAI5Dqn99sUWFTQg/WeKxjBqNa3z9KImod4U1C/R8HbptkYz/1
         UNGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6G7hl7r9O0R95G9G88Q1ahRKWrbSawV1OBFx7ztpkLA=;
        b=rBDP97BcfQUFph9bk83bu6QaPJTOt/gBFI2CXoma7rH68NkjFDqf5/KZ9ultI8n2Fx
         A26Yd0zozkxu9fTPHKkRP5E+vc2aexYHxPnraS8ECtio/PJtODCoYELx86SmORtENfvz
         l+K7GQq91sEQZD8/ncdfjxsz6WNqqxDCWOkALxTEEnwFF/HV+cM0hy6/B04Sfr1tvzqu
         /61KO5m/kLZGQdeGnmipClrEagEp1qkk/j3PBzO/C8T/vGpcV5g7pZ2ZgrXzciI0Vg1k
         UpE7kQvr0UzK3wJoikdmXZEp6QQM1JRsFLeLm78GLtj3aOpuElVBHU82DJt6q40if3Oy
         izJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6G7hl7r9O0R95G9G88Q1ahRKWrbSawV1OBFx7ztpkLA=;
        b=GcakifZxaHO74qC2JWkkYqDLUr76H8L8aY5w8U9djgYiJ3/03ixway+yhCpoV4Sxuf
         vfDvxCtIOp1qSYdoEkVD9exkiZODvRicbMQyYsk5g6sg7VKJQTO4Sb1C98bYvcEzFVIa
         QUFdN5D40m5jXvxGp6bCGgplK/JNQtihMv0gknbxGfTjkburfk7L5+tDCcoNnK+Al/ta
         Gr6Pd4GzB8XwzF29l/+g5VRWg+3N+ItJhUo/tgCgcLe38GQOX8pe8TbCwm4kznqzufrE
         TZFPYf9jtLDjOEMDaqMWYbIpIyFuhRPvoxB3uNNQbaAzvCSHoByFS/nomrbU2lutmKCv
         HOnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXubXA6OIGttaetonEB/sB+11epTbbrNqdjWNk1JIf+FBrcw9fz
	eE5njUON359QN0sNPehpFSE=
X-Google-Smtp-Source: APXvYqxLyJcxCw7U1Y/gs92IavgZhip6wFMQ92eOOGw1/ghu2ahKULH+K48NF4YQd9oUWsgyZP87hg==
X-Received: by 2002:a2e:6c07:: with SMTP id h7mr478371ljc.177.1565203841141;
        Wed, 07 Aug 2019 11:50:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5213:: with SMTP id a19ls7775240lfl.8.gmail; Wed, 07 Aug
 2019 11:50:40 -0700 (PDT)
X-Received: by 2002:a19:be03:: with SMTP id o3mr6685508lff.88.1565203840706;
        Wed, 07 Aug 2019 11:50:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565203840; cv=none;
        d=google.com; s=arc-20160816;
        b=ZFwUhUvwdW0rW6eFc6jSNsTRXaEEv2GREU5LkKfVNPMCmdLNCl/0e58uBDqKQYphGL
         QvHTa/cv+HCvGUAeC0vBH7cZDNHxRcx+uB4jylvYMHEan3+2PABoOl8gOvQE/lsvxX2K
         rPe8OQWq+nDMMxUT28IPtFBYoZ0NVwlZPXQg5Sg0dGelpNnDCAGpIKGnftrr0NUX0TZm
         O//mhzuWwn2r+eKmm5DuvGiDgGSrRWxh4hZHHTEhU7ZxM23kjW7O/lJfKPHza0yN4ACb
         8prtNV57AJ7p9I15vlEs1dUI+oxR02eS9gf2MhrkvZhOAQcswN0+nY4BTRPX8xIpcdQM
         c0kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=4zBhmcGbke0L3TDRk3YD1LFQWY8P7Wd1aB1B/PhxBFg=;
        b=ebB3sokiUqAu17LWYHx+EyvNNsvVHDVfcfmBA9p0t0AYACN2j7w1XJnPHnT6M1QWQf
         UzGWb3gqWYOYDDuegiGzksG4cCJwqQSLQyMuL/yBt9eW3YqLBacyCPnB0IkFoyx6d2MW
         iofbBQS/AZynOfjMzvIqOGLOYgckVKN8fodFZOP0jzlJ+olvtsIBjHVmitRjyIgrqPTN
         XEM7SjXZaLKUqGUb3//8Vj0cJQxWxKJUjwemsjHGbgGlrqKHBkj95NC/1lMCBtd7Qv/b
         eAiDqAy0I4JXBJ/sCxt7jVE8l7sXoJhhItS30SKZhAf9VPFsMdX5aviixVAopu5WHy/N
         yolg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m3n6XiEn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id f26si4472099lfp.5.2019.08.07.11.50.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 11:50:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id p74so1038991wme.4
        for <clang-built-linux@googlegroups.com>; Wed, 07 Aug 2019 11:50:40 -0700 (PDT)
X-Received: by 2002:a1c:1a87:: with SMTP id a129mr1191683wma.21.1565203839885;
        Wed, 07 Aug 2019 11:50:39 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id f192sm1473483wmg.30.2019.08.07.11.50.38
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 07 Aug 2019 11:50:39 -0700 (PDT)
Date: Wed, 7 Aug 2019 11:50:37 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Song Liu <songliubraving@fb.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	kbuild test robot <lkp@intel.com>, "kbuild@01.org" <kbuild@01.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [liu-song6-linux:uprobe-thp 7/15] uprobes.c:undefined reference
 to `__compiletime_assert_557'
Message-ID: <20190807185037.GA27376@archlinux-threadripper>
References: <201908021026.gxOYoxJj%lkp@intel.com>
 <CAKwvOdmQh3WJAYq9RKw3ihbL22RXJFcF84jMXh93ceTFdJwNNA@mail.gmail.com>
 <BBA76F9F-5B41-4C5D-A008-23F678EE6311@fb.com>
 <20190807054139.GA98037@archlinux-threadripper>
 <E23CFF16-43EF-47C8-9EA2-CCE13C5C4F4A@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <E23CFF16-43EF-47C8-9EA2-CCE13C5C4F4A@fb.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=m3n6XiEn;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Aug 07, 2019 at 02:29:11PM +0000, Song Liu wrote:
> Hi Nathan,
> 
> > On Aug 6, 2019, at 10:41 PM, Nathan Chancellor <natechancellor@gmail.com> wrote:
> > 
> > On Wed, Aug 07, 2019 at 05:27:30AM +0000, Song Liu wrote:
> >> Hi, 
> >> 
> >>> On Aug 6, 2019, at 4:12 PM, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >>> 
> >>> + Song
> >>> 
> >>> Hi Song, has this issue been previously reported or fixed?
> >> 
> >> This one points to some changes that I don't plan to upstream. So I haven't
> >> fixed it. 
> >> 
> >> Would this be a problem?
> >> 
> >> Thanks,
> >> Song
> >> 
> > 
> > I briefly looked into this and I think that clang isn't able to evaluate
> > the VM_BUG_ON(haddr & ~HPAGE_PMD_MASK) in collapse_pte_mapped_thp at
> > compile time, thus this error. Not sure how to work around that but if
> > you don't plan to upstream these patches, then they won't affect us.
> > 
> 
> Yes, I also think this is because HPAGE_PMD_MASK. I fixed it in a newer 
> version, and included Reported-by. However, I guess the broken version 
> did make to linux-next (and got reverted). Let me work on that.
> 
> Thanks,
> Song
> 

Hi Song,

I tested your v4 on top of next-20190807 and did not see any issues,
thanks for the fix :)

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807185037.GA27376%40archlinux-threadripper.
