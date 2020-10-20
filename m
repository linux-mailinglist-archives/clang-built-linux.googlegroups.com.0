Return-Path: <clang-built-linux+bncBC27X66SWQMBBHO7XP6AKGQEDZDIDPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 962F3293E2A
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 16:09:34 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id a2sf2030968iod.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 07:09:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603202973; cv=pass;
        d=google.com; s=arc-20160816;
        b=fAghYB4T69YzjGkHQk52n5sThuOpVuk551xjXc0PRrhqM4LDWBvOXltgFWgpNg7Gg/
         +Ozw3xWAvspGHttRT46+oyIm2aUckn4srLljMs+VKAoskW6oiT77CzHbyRrtTf2EHdWz
         sUZb4/xL/ZutdNo2G+MNH6sJYt2mJVktiRq8Un9YHSbqOW2eoyQ1RQ81des10G1RXY/u
         M5j42nZgoI/v60B3u4Z05IPSDqiwpfe00wrjX+zVOWjPNPqZXTlBbNVRP1zNuUvJSLW2
         ut+/Hx3oPCP8WHxVK9YkjuW+DDqiVjjoYQ+c/5IyxMumc7t8RrK35cTin4An/KlDT0dC
         Z3QQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=OS/L7bHPb+2keH8VDXwEy1wbjMJtnziJUA6kXhHVop4=;
        b=TX0l63sy7kBtlkunNQbIYvtAbmMa6kFs5jMlcW4qXT2mm6VWWreyugLXqSRQQAOB7e
         iUHFUvUKdjOQTmfN4IyRt6DePjpHciAOkqrBnjfRJvMzj9ILHBX8tpfqQVleAYrc49ed
         Bc2JvS6oMYZQEHTM4azshDWox+uHshBrpjOKJG/Go0QNeWOmEPH7SHbVxA3z3uFtDOR3
         BrhhVIl0/fVfnGmJdCu8hA5PTdA1IODXQVk/hPkfhVmi23nlotuEvV7iEkiq7VifLnix
         HQ4COosCyN1bTgLwht922+hV+97H73TVqd8CZb44Qmu1zrjKT5bZvNX/kNi4tQRJykHe
         11sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ewDv3aOr;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OS/L7bHPb+2keH8VDXwEy1wbjMJtnziJUA6kXhHVop4=;
        b=B851oBSijdh4TOeMau1nlsMI0YrLgbs61mrEzIrw69R6Ff4YIZKK4s2rA0fjFxJ2m4
         +p77VeHifPBZXpnPwSsOrW/5t+2uUYji8FBoT4fE2GZWyAgVl2Qp0D5zE8sdp35yniBR
         d+X9X0yFytyiKjRmBvz6S2bVaKmY0+3Rd8ppb86dU2LdrlKoGbQ4r4KrOkPPQ+0s20SH
         YahA1NY7tOp0axYyhT9kwjzccEXRi9wOWyMVMBZHq7WUdyl20upraAfU0SNFoo47Lb4u
         s8kwJjCOQNiV2ISwpdAIoHFHpxX8z3NScFxmP+FMJwVlWOs/uv35ub5s4WD/+D705JbR
         2Dww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OS/L7bHPb+2keH8VDXwEy1wbjMJtnziJUA6kXhHVop4=;
        b=U0lTlxzh605vvgmws/Wkmx2ueIJZTtzeK5R8gzRma097xerEyNy9iVtBhWB6XGcgam
         hCtKd9Kq0B9EiPKlvNEvJMEAW2V6hwFcupIkYiD0fL6YzSmwrZne6WRBtrnh2okFgeRI
         Gt8Z1S27zDrWVUmrwX2n7ugrLj1+Bo7ZcFy5YN3KUfnBDFkMRCA6ilxfxUt8JN/sLzMa
         wcuYewCOTmJLxx9eoav59iu5p8wg7rD7h4eec9lno52jm7rLWlraWFEujDOdaRAPvLR+
         DisS2F6YVzD3Gn8chs3q5dpL+BORpL8/XmpEZ9OTLsQW2tOXJvm87BPloEPpBsECkbC/
         Zfiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+iWZ/Dox3aQRjIAV0muzR9kkUg7JmVNlEy08XNMBz1rOBWCnZ
	aE1jVLU/VYszBYMOb4nxbus=
X-Google-Smtp-Source: ABdhPJwEQhyWziXH3aAMVnslp6/iyTsATnG4uqs+9F/tRsUZX77vNBejb2smrLBYrDURZxunZio3Eg==
X-Received: by 2002:a5e:dd4b:: with SMTP id u11mr2262240iop.190.1603202973370;
        Tue, 20 Oct 2020 07:09:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8d06:: with SMTP id p6ls252530ioj.9.gmail; Tue, 20 Oct
 2020 07:09:32 -0700 (PDT)
X-Received: by 2002:a05:6602:2c84:: with SMTP id i4mr2187903iow.89.1603202972879;
        Tue, 20 Oct 2020 07:09:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603202972; cv=none;
        d=google.com; s=arc-20160816;
        b=C+5f/BEdzEwOUva6ZkhZnn8AkuGWjaLGmQFDiUMn29jKoGz+XReMsJv2yS/7yYelWw
         mHITCWRoLWAYNdfLjbGSgmmMnmU97qvaXi3Ms1XQOs2pjLlFmex3KoaeVgQcN3oLl8UD
         BPB1zSM52jHQ0tYj6++ZWMEe+MG6vdGuhX1d/6+ggZ24owzm0yBoUkdDqIic7c1X9a/4
         m0t7d0NKkRf2mhjtJVujDy4cuY6oRfXIfhaGyzyloz81mTXWnGyy/aWZcu2mGjt4qcLB
         Qus+uQOg4/FCF7aSbLlwkx585R86VSRTg1simtv/T8SUXlHE8CJguR2Y7BL5+O7Y2Qyj
         Jenw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=rOdQp2iOSkahNa0CfH1+VDlgH/zqWEjNOjN0qUXEes0=;
        b=QX7l3kgVTv40lrzFlwBDzFjtKckLhOYFE3DqVUPahMqhrDkfolkauYVdA4RyhRwBs+
         e0HjP+ez5DbWK6uomznc+jLqfZ6vAZ4FfhGfL88ApvAjHHDThq6SXnBeg/TkKl0W6Wg8
         kiAjlwvIKXo1Jg4kFaxmfM4yWJjvJNgJrf/1HJMMSIvEoVpNCC+d6E+06x1730JfEsOU
         Wx10rhkbfuhnUcYQPyeA7QS+jZadNL6lD7/QMqWudynlk8HPYXoy2sO4fQh2J6+sjQ4L
         dZ7P1Ctpp8LZcKLiWDP4414EwSvIfdzrCKUlYZ4RY1JEWn1RsgUM8L+AFXtnoV9GTeIa
         7gLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ewDv3aOr;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id d25si118019ioz.2.2020.10.20.07.09.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 07:09:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-443-gZ4vL6jxOjygB5g-BDufRg-1; Tue, 20 Oct 2020 10:09:30 -0400
X-MC-Unique: gZ4vL6jxOjygB5g-BDufRg-1
Received: by mail-qv1-f69.google.com with SMTP id z9so1454572qvo.20
        for <clang-built-linux@googlegroups.com>; Tue, 20 Oct 2020 07:09:30 -0700 (PDT)
X-Received: by 2002:a05:620a:2195:: with SMTP id g21mr2990093qka.358.1603202969740;
        Tue, 20 Oct 2020 07:09:29 -0700 (PDT)
X-Received: by 2002:a05:620a:2195:: with SMTP id g21mr2990039qka.358.1603202969497;
        Tue, 20 Oct 2020 07:09:29 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id o14sm785284qto.16.2020.10.20.07.09.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 07:09:28 -0700 (PDT)
Subject: Re: [RFC] treewide: cleanup unreachable breaks
To: Jason Gunthorpe <jgg@ziepe.ca>, Nick Desaulniers <ndesaulniers@google.com>
Cc: LKML <linux-kernel@vger.kernel.org>, linux-edac@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-pm@vger.kernel.org,
 xen-devel@lists.xenproject.org, linux-block@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-power@fi.rohmeurope.com, linux-gpio@vger.kernel.org,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, nouveau@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org,
 spice-devel@lists.freedesktop.org, linux-iio@vger.kernel.org,
 linux-amlogic@lists.infradead.org, industrypack-devel@lists.sourceforge.net,
 linux-media@vger.kernel.org, MPT-FusionLinux.pdl@broadcom.com,
 linux-scsi@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-can@vger.kernel.org, Network Development <netdev@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, ath10k@lists.infradead.org,
 linux-wireless <linux-wireless@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-nfc@lists.01.org,
 linux-nvdimm <linux-nvdimm@lists.01.org>, linux-pci@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 patches@opensource.cirrus.com, storagedev@microchip.com,
 devel@driverdev.osuosl.org, linux-serial@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-watchdog@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 bpf <bpf@vger.kernel.org>, linux-integrity@vger.kernel.org,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 alsa-devel@alsa-project.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Greg KH <gregkh@linuxfoundation.org>, George Burgess <gbiv@google.com>
References: <20201017160928.12698-1-trix@redhat.com>
 <20201018054332.GB593954@kroah.com>
 <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
 <20201019230546.GH36674@ziepe.ca>
From: Tom Rix <trix@redhat.com>
Message-ID: <859ff6ff-3e10-195c-6961-7b2902b151d4@redhat.com>
Date: Tue, 20 Oct 2020 07:09:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20201019230546.GH36674@ziepe.ca>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ewDv3aOr;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
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


On 10/19/20 4:05 PM, Jason Gunthorpe wrote:
> On Mon, Oct 19, 2020 at 12:42:15PM -0700, Nick Desaulniers wrote:
>> On Sat, Oct 17, 2020 at 10:43 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>>> On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
>>>> From: Tom Rix <trix@redhat.com>
>>>>
>>>> This is a upcoming change to clean up a new warning treewide.
>>>> I am wondering if the change could be one mega patch (see below) or
>>>> normal patch per file about 100 patches or somewhere half way by collecting
>>>> early acks.
>>> Please break it up into one-patch-per-subsystem, like normal, and get it
>>> merged that way.
>>>
>>> Sending us a patch, without even a diffstat to review, isn't going to
>>> get you very far...
>> Tom,
>> If you're able to automate this cleanup, I suggest checking in a
>> script that can be run on a directory.  Then for each subsystem you
>> can say in your commit "I ran scripts/fix_whatever.py on this subdir."
>>  Then others can help you drive the tree wide cleanup.  Then we can
>> enable -Wunreachable-code-break either by default, or W=2 right now
>> might be a good idea.
> I remember using clang-modernize in the past to fix issues very
> similar to this, if clang machinery can generate the warning, can't
> something like clang-tidy directly generate the patch?

Yes clang-tidy and similar are good tools.

Sometimes they change too much and your time shifts

from editing to analyzing and dropping changes.


I am looking at them for auto changing api.

When i have something greater than half baked i will post.

Tom

>
> You can send me a patch for drivers/infiniband/* as well
>
> Thanks,
> Jason
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/859ff6ff-3e10-195c-6961-7b2902b151d4%40redhat.com.
