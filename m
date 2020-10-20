Return-Path: <clang-built-linux+bncBC27X66SWQMBB5OYXP6AKGQEKYTFX4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE98293DD4
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 15:56:07 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id x24sf1149539pfi.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 06:56:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603202165; cv=pass;
        d=google.com; s=arc-20160816;
        b=fTewlubUdEoquAxkB6mD81m2/UW6J9DBRbXROyYW6d85BlY+u7qIvhDk1ulfPRC4B3
         T0xPJQQWMR47uiGaSrdXD9ruV3lpkL1J0YNLTjrcH0c5Gn2pyWUWM5SZ35KcL56Zxvmd
         7WUCvOa3ns9a915JzRsg9qD1oo+jw8qKFOHd1CLq0OurSfx3nypbZSMZwj0crAv2ygiU
         BWJmaCkWDx+pz1T8+AzlU9T9yu19nH94cnrDszZtpEmjhAirTW8yJEijzze9dOr7g+z/
         k+vxZmtcFp3T3NSFTPvjb9as1/YBRs2jxiK+InMsLUIc6sEvzOj01htlij7xss7RIJAM
         HihA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=9nhC+9WBVUb3ZRiQ9oHAD/nY/fNZ/IdCerMZ1AGRsTc=;
        b=k+IrzY9wLTgTXx/YNjDN8so1nGNQc4xK15m5p80Gn16AJgWu7XoicFzfsLSCSFamrb
         WV0YwSbE0t0rz2AHpdnyY6pJHDp3dISfs8pa/lVie/CRODsbBMHjlA89IaS4i3SXhjwe
         ncmQVpuOi14EH0jqpCDe0rywBIo1xCCDLBj9Pk/YeQR5nt5RfR02It01n6QK5hqi075a
         TiUNqbN9vuN77hYuPLBgiZIyLhTmLJ8qFV3QUqJRHSyrStxMASruHlkkf031C/Mn9AgZ
         sX4DrwbK4LNZD9nB+i05CXDFa1BnngUXHw/0F3dCyFUSfbqSMwSmGATlBTqpVgNoJxJL
         PmvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="QUp+Tm/4";
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9nhC+9WBVUb3ZRiQ9oHAD/nY/fNZ/IdCerMZ1AGRsTc=;
        b=KErFAZ1XZ431+szc0HLpyENWAZEoR5Mn1NhBLyuy5tkfoLOQ3yc39INSjPtN9G/Zna
         tzd3afkoE+Q7Onb17UcZv61kjA9xik6ngUFCZHP5IluNPcMABsVMCfdDN3yrdF34I/4Y
         dPOEe+GxOk1uu4DHp74NNb5OkMiiBqCyRLcWvDvcNclNqZnYw+OAA8isf4fMmQ7pKtlW
         +OTseSOPSB9scKYFZgEoiaRhXZRP6Z25pN7k4/xCubcgobM44XDEL2OlP7Z5xoH4x6vX
         HtzqYphGjzEE8WfV+7j35nXE8HSFlPvNadI72fvQMIprC3NH7maS4Z+6hIilr9xfWFEN
         5Ahg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9nhC+9WBVUb3ZRiQ9oHAD/nY/fNZ/IdCerMZ1AGRsTc=;
        b=H9meuRQPZWGrQfq4FeHz+GYWiicV9VRZZ5GMbkC99BomDUBLQZnsfaztBo6yzY40uz
         0BqrjP3hT8VGZRQBmmYTjkM1taWoW0/DoqtbzM/XAEauIC+AYyUhooS4+YbBg0jEhu0J
         uXmop22sb6wyE5EgI1KWBNhEsz5aCrOQ7u8rfVrFDTIlbV+vl/+JeOOG7rXKAFfgAYB8
         apYQd33uLFAFMHDBFmWEFNc8BhlEjE940dqzwlqPcUtJELrXW+evWrkx/NcSkWZ4TbOA
         0bnHKEqmnz6ueAXTegkg4SlO3EsfbSNpdOJfLT0oPIfvIlL0JfHzG89WkVVmFpPz7III
         TZWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311HxB2m8xKX7wFDF37+m6trjnEGYj0RS4606qMIxNy0R1qQ5co
	hlZQD3Jcl3K8TYV6zXBOvLE=
X-Google-Smtp-Source: ABdhPJzSs3qdvR3hALsoDK8Z8Eb99UQJKkZpwJaXpl3RSH7nld6E3BY5nogIwt7LGIgRre00XWTFIA==
X-Received: by 2002:a63:1810:: with SMTP id y16mr2698774pgl.309.1603202165616;
        Tue, 20 Oct 2020 06:56:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:8f47:: with SMTP id r7ls790650pgn.8.gmail; Tue, 20 Oct
 2020 06:56:04 -0700 (PDT)
X-Received: by 2002:a63:4f0b:: with SMTP id d11mr2896812pgb.210.1603202164895;
        Tue, 20 Oct 2020 06:56:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603202164; cv=none;
        d=google.com; s=arc-20160816;
        b=LF22tbGe4J7lJc7Km6CPYGAOiVOqIYkd55Y2O02iuBCgznSDXnYqAT/X/Tui3sURrF
         TIEno5LZmujyZL6Zw1VJmUs3dM6xO3FVE3V3XowB2n65mvaSYoTd2AbrXCaDtzxutUO5
         0KnV9w3OE1v8NkOPJFdfty7cZjcok3sS6KojRBQyHaGL3rTmiyB3QqUd0fviZ1M2Hw77
         4Tx503kWLxoPTgV0zpCdnrINJvd0RR4KBXujbFagXFyrm/HnKmOlox9V1zQVex2nnqyI
         ySIKZVKHvpxk9EvJKj3RSOntDCJkfYSoNbkJ3u3qR2gPggzE5+HPb/69IKW56vywUCWj
         8Uiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=HyQ28xr5/lapv6azTtFCvHFT5XQ1+OzeHk+84iEm66Y=;
        b=fmq8j9EbLsso0L71JLn/xcAsxqrPus6UlmEnBLn3+GmzUuAuWYsIwtTYy0hvAUs4Nn
         nFdFgkPU674PDMyFjw01gVs6Nr6Pu2X55Hz3GgKO5LqoBFxiipVP+0e3uyrwY79FOdDu
         6OPI+i0VzVDtWPHwWt9sm7l0jI4XOIdd0V5xPgazioVMq+c14xSvTXa8Shd80nv0fzL6
         vSxxONEq4Jmak4NJCH26MZyYJBI/zM+Hd9GjT1gHxFqEDG4JZgyJ/bod9U4FtlhkLx7S
         oKO3lT37PGlgXxdA5BaJhTENH88M4NoliNaiHJG9B/JDhFEfHjeFEo4b84OXAOW8oBcC
         40Zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="QUp+Tm/4";
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id 191si142490pfu.3.2020.10.20.06.56.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 06:56:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-573-jdFOWdEnP9agswpZn155rw-1; Tue, 20 Oct 2020 09:56:01 -0400
X-MC-Unique: jdFOWdEnP9agswpZn155rw-1
Received: by mail-qv1-f70.google.com with SMTP id k6so1404719qvg.9
        for <clang-built-linux@googlegroups.com>; Tue, 20 Oct 2020 06:56:01 -0700 (PDT)
X-Received: by 2002:a05:6214:174f:: with SMTP id dc15mr3370417qvb.25.1603202160686;
        Tue, 20 Oct 2020 06:56:00 -0700 (PDT)
X-Received: by 2002:a05:6214:174f:: with SMTP id dc15mr3370377qvb.25.1603202160139;
        Tue, 20 Oct 2020 06:56:00 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id b8sm775938qkn.133.2020.10.20.06.55.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 06:55:59 -0700 (PDT)
Subject: Re: [RFC] treewide: cleanup unreachable breaks
To: Nick Desaulniers <ndesaulniers@google.com>
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
 Greg KH <gregkh@linuxfoundation.org>, George Burgess <gbiv@google.com>,
 Joe Perches <joe@perches.com>
References: <20201017160928.12698-1-trix@redhat.com>
 <20201018054332.GB593954@kroah.com>
 <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <ca1f50d6-1005-8e3d-8d5c-98c82a704338@redhat.com>
Date: Tue, 20 Oct 2020 06:55:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="QUp+Tm/4";
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


On 10/19/20 12:42 PM, Nick Desaulniers wrote:
> On Sat, Oct 17, 2020 at 10:43 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>> On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
>>> From: Tom Rix <trix@redhat.com>
>>>
>>> This is a upcoming change to clean up a new warning treewide.
>>> I am wondering if the change could be one mega patch (see below) or
>>> normal patch per file about 100 patches or somewhere half way by collecting
>>> early acks.
>> Please break it up into one-patch-per-subsystem, like normal, and get it
>> merged that way.
>>
>> Sending us a patch, without even a diffstat to review, isn't going to
>> get you very far...
> Tom,
> If you're able to automate this cleanup, I suggest checking in a
> script that can be run on a directory.  Then for each subsystem you
> can say in your commit "I ran scripts/fix_whatever.py on this subdir."
>  Then others can help you drive the tree wide cleanup.  Then we can
> enable -Wunreachable-code-break either by default, or W=2 right now
> might be a good idea.

I should have waited for Joe Perches's fixer addition to checkpatch :)

The easy fixes I did only cover about 1/2 of the problems.

Remaining are mostly nested switches, which from a complexity standpoint is bad.

>
> Ah, George (gbiv@, cc'ed), did an analysis recently of
> `-Wunreachable-code-loop-increment`, `-Wunreachable-code-break`, and
> `-Wunreachable-code-return` for Android userspace.  From the review:
> ```
> Spoilers: of these, it seems useful to turn on
> -Wunreachable-code-loop-increment and -Wunreachable-code-return by
> default for Android

In my simple add-a-cflag bot, i see there are about 250

issues for -Wunreachable-code-return.

I'll see about doing this one next.

> ...
> While these conventions about always having break arguably became
> obsolete when we enabled -Wfallthrough, my sample turned up zero
> potential bugs caught by this warning, and we'd need to put a lot of
> effort into getting a clean tree. So this warning doesn't seem to be
> worth it.
> ```
> Looks like there's an order of magnitude of `-Wunreachable-code-break`
> than the other two.
>
> We probably should add all 3 to W=2 builds (wrapped in cc-option).
> I've filed https://github.com/ClangBuiltLinux/linux/issues/1180 to
> follow up on.

Yes, i think think these should be added.

Tom

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ca1f50d6-1005-8e3d-8d5c-98c82a704338%40redhat.com.
