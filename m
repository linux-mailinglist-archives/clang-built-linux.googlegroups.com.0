Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBCOB576QKGQEYAQ7MCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D7A2C0FE4
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 17:17:14 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id 9sf13308875pfn.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 08:17:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606148233; cv=pass;
        d=google.com; s=arc-20160816;
        b=MsIib81oV0AcSA95OyH+pKTWMDaDrOzxvYBUCt2se97jqISaR/Dlp6M4T2XS37NYw0
         G5evhSUlvr1KGqOzS7pVnp0Dg6yP+Ipg1PSRTAkrfg8r+VgdgpvO2qk3+Mg80a79Ax5o
         sbMd1HhYDnK3dmDbfrSqyLaVwRG2BSVdyTN5U4DY8VUcmmJm0LzNtyARYTYOXGqoO3PC
         a76SuMJxiUBigY9E0gpH8b1eB/RpORoNIuRr/iBC1iGjJPWH1tMyJSembukSOzyfDGFc
         Rucs6VMTRA5SlL8HWFgt0YqlNjlRafICPATtivshobhbeaTfvXHRc9LKj7F3vf/IHYxj
         Wx+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ZiwGCqZPdxlLsEguNaD9x1LCkk1kZ9ExmfgCHnahv6E=;
        b=r5WRmG3OvYCoEXV6OzvuRbDk05dhzjCbjqvoWhv3irkW61P6snX0hSzWb/Nr66capB
         TRmyacgDUG+13CCR+9G5f8DDbS+Wv/LwPzyDLUZrRw3SNc1rdFbKuDDQPICftA6lifUi
         ydbDRsL4Ls+WB9gma6bZVcCeXYonnrykIbU6mhO0/GKNGqMpSzb/5pmyQLfWdVMtvsm9
         iZSb622ny60hGNmF9O3LPX0+5WdH2urwi+M7QirGZJpbAzV9dm+depGPvdbCZIo+T5n2
         t5ERLRnc4bPOj3r0SlBAFtMkN7u7LiIyAf2rLL7jG8dy30AJSpYaosfTtEn3Yy1EzBB0
         4E9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jzsPhOCP;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZiwGCqZPdxlLsEguNaD9x1LCkk1kZ9ExmfgCHnahv6E=;
        b=NrmR/W0iSa1Lln1mpEAGxIYYWCfbivXXOI3k7Ys4M16/mK1HF5dJRa6lSZDOheGebT
         ZGbcBQKyVOgmHR2uu6Avi+U8JpDhZ273sZkrCVvQt66SHwnSLB3uhbUuqXx+hnO9n0Yf
         i+De1Qy6Dx/zDN44bgJeqPaUzMaYz+3wa884kA2XnnksOAzOGy+GieSr0u8/zLTBx/vx
         uOhVZ5nDT+WfmY4CwUBsdmfRF0OABYbidFbMW1nC7BeJWpWZW3YyX7OHKeyxeNWi8Q3P
         4a5vDfqitNmRwGIBA/THN6RQShDt7fx+CMZ//mnpFj8ClWWIk61dp3kn7vqn7RRmJPzs
         Qqew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZiwGCqZPdxlLsEguNaD9x1LCkk1kZ9ExmfgCHnahv6E=;
        b=O46YkhFIZ/Pbyw0EIuKjYvgJWHR9uKMsMilUOjqAtYLeQudTmZgu/wGuBzCIq/ifWu
         vd6H5JePmYcOv32shlypCE3nrjCPbpiITpy/1zNmhWWygrs0CELoXXACrUZXiB9dxGoP
         +0D0CKU3c6ZR82yUQRZhRpUJI9DicnefqrsXlfo9PbPh9vMF88a6FEKhicyp1KxGCySn
         cBohNcldfYaXY0+lQfy1TdlJBKubRNXubcmF7Fuxkf/MQwLjVnddJyWOxvjre20f8BE4
         kXhHXmAXX5Cc24444sAbzw5cZMq4LzFv/WSWvasunbvKs2c3LIC6VpCvOgrzyPfVRdCn
         yroQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZiwGCqZPdxlLsEguNaD9x1LCkk1kZ9ExmfgCHnahv6E=;
        b=Go8xcv19YdSAhmrZHiCn8QGVtGLh9ZMTI75tORBQ+jss42ba9SXWe584jfjdQfDCPP
         30KUIjgpgHFK5joNsjiiNl0oPG2Z9si/A2oEThhB5r61/lQXy1CZvGLc/nMiLf6y5yVT
         0Oluj3gHRxyCWPzQu1o4RmVr+DhZyA93Hlg/kdXWU4pvqEghorixpUaNUmKEvsrSFSbr
         C+cGhR4GgSnpsm2Z5YXpsrqZjsmSUMLejrFO88PrzaRH9k/A7IMJNqtlfBdS9PBO+p5Z
         xH1dpDn03RiIublYLehkZXornETAJc+LAmBKciwoHKZ55aDSELr+AsilOI2XRoAeastI
         hj0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xwUIoItYRAT0cNBRMU+FZ7FpfG1ygOddvMvybAudUz6wZ8ju1
	iX5zm0qJBcjv2YPyg2+4+kI=
X-Google-Smtp-Source: ABdhPJwpsCW+xmph0COPeSRNkqujn1J2cDNkFGpESQJFr+tbgmRVslts1n447ZrqbWt4g4ZOHn7fXQ==
X-Received: by 2002:a17:902:c281:b029:d7:ce5d:6406 with SMTP id i1-20020a170902c281b02900d7ce5d6406mr280479pld.35.1606148233282;
        Mon, 23 Nov 2020 08:17:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8f0c:: with SMTP id n12ls5224994pfd.8.gmail; Mon, 23 Nov
 2020 08:17:12 -0800 (PST)
X-Received: by 2002:a63:6305:: with SMTP id x5mr165091pgb.269.1606148232513;
        Mon, 23 Nov 2020 08:17:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606148232; cv=none;
        d=google.com; s=arc-20160816;
        b=Q3OvBDNrqLHe3jjzN1WGJrQ3lE5ZYBzFu9EUxa7B07bsjuSR9le3uixHS6WTnF2TYO
         DW4ta1GcJ30i+6Ndp24U176K9shSr6Wa+AKH061IixhrwR6RpL7zaftIA/vLtm9XxMGi
         YRWoXt0fN7xjnQb1PBhgnO8MQn6aK5ed4QIkslpAzdml6nAoqMlj/HIiIY/8Me/d2RY+
         y+HOALXu5HgORs3b0MCWXLJc5EOdTbqUQoJ/aqQs/uWrzF+9Wk5TSdYnXLyvdX6oN2rD
         LgCmRWttWevNBGsQm7dHkO5TA8oTU3xYtua7KLWwo3M1S2dL8xoUlmSbrG2jML6eyw2E
         bdvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9G9wehhbpTZzWWOvGr3rWAgWQ0geLC9Yp77M/YC6Idw=;
        b=ouTsPxio1Suu4srZ2OEe7TKfTBUp2lMjgyPnzXZjALJAtt0vBMCU+7al5OLxgLieVF
         ZvtMvEfBgSLl3zEzdAvgfM1418NOsdb0X5J/tdoXtXtggsz1CwFxMWwmoGUd0fwfM0uX
         FiOP//cMjXnhYV1xUiSlZFQ/B6VamyZOcdMwlq7sNXChV8vdETozQbOMvywPBrRYfEUM
         SsB/GVM954IDARR6R4wF+SRjfUcSmUDKcm8tKsn6U013LvoYdTQLPFUQR33hr6vWEsMM
         s7toggiOwiXtORX5WNCe7dgeuVm9FqonP6ydAR75fbw+R16uaadMdHpogaW/DeV0XQ/u
         BwbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jzsPhOCP;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id gg20si1098787pjb.3.2020.11.23.08.17.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2020 08:17:12 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id o11so18652577ioo.11
        for <clang-built-linux@googlegroups.com>; Mon, 23 Nov 2020 08:17:12 -0800 (PST)
X-Received: by 2002:a05:6602:22c7:: with SMTP id e7mr415585ioe.114.1606148231969;
 Mon, 23 Nov 2020 08:17:11 -0800 (PST)
MIME-Version: 1.0
References: <20201121165058.1644182-1-trix@redhat.com> <5843ef910b0e86c00d9c0143dec20f93823b016b.camel@HansenPartnership.com>
 <87y2ism5or.fsf@intel.com>
In-Reply-To: <87y2ism5or.fsf@intel.com>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Mon, 23 Nov 2020 17:17:00 +0100
Message-ID: <CAKXUXMydH+VtMeuftPRgCg_PYm2iChOMkUYjO=QTG=NRM3QFiw@mail.gmail.com>
Subject: Re: [RFC] MAINTAINERS tag for cleanup robot
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, Tom Rix <trix@redhat.com>, 
	Joe Perches <joe@perches.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-hyperv@vger.kernel.org, kvm@vger.kernel.org, 
	linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net, 
	"open list:ASYMMETRIC KEYS" <keyrings@vger.kernel.org>, linux-mtd@lists.infradead.org, 
	linux-scsi@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
	cluster-devel@redhat.com, linux-acpi@vger.kernel.org, 
	tboot-devel@lists.sourceforge.net, coreteam@netfilter.org, 
	xen-devel@lists.xenproject.org, MPT-FusionLinux.pdl@broadcom.com, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, alsa-devel@alsa-project.org, 
	intel-gfx@lists.freedesktop.org, ecryptfs@vger.kernel.org, 
	linux-omap@vger.kernel.org, devel@acpica.org, linux-nfs@vger.kernel.org, 
	Netdev <netdev@vger.kernel.org>, linux-usb@vger.kernel.org, 
	linux-wireless <linux-wireless@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-bluetooth@vger.kernel.org, 
	netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org, 
	patches@opensource.cirrus.com, linux-fsdevel@vger.kernel.org, 
	bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jzsPhOCP;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d41
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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

On Mon, Nov 23, 2020 at 4:52 PM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Sat, 21 Nov 2020, James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> > On Sat, 2020-11-21 at 08:50 -0800, trix@redhat.com wrote:
> >> A difficult part of automating commits is composing the subsystem
> >> preamble in the commit log.  For the ongoing effort of a fixer
> >> producing
> >> one or two fixes a release the use of 'treewide:' does not seem
> >> appropriate.
> >>
> >> It would be better if the normal prefix was used.  Unfortunately
> >> normal is
> >> not consistent across the tree.
> >>
> >>
> >>      D: Commit subsystem prefix
> >>
> >> ex/ for FPGA DFL DRIVERS
> >>
> >>      D: fpga: dfl:
> >>
> >
> > I've got to bet this is going to cause more issues than it solves.
>
> Agreed.
>

Tom, this a problem only kernel janitors encounter; all other
developers really do not have that issue. The time spent on creating
the patch is much larger than the amount saved if the commit log
header line prefix would be derived automatically. I believe Julia
Lawall, Arnd Bergmann and Nathan Chancellor as long-term
high-frequency janitors do have already scripted approaches to that
issue. Maybe they simply need to share these scripts with you and you
consolidate them and share with everyone?

Also, making clean-up patches cumbersome has a positive side as well;
maintainers are not swamped with fully automated patch submissions.
There have been some bad experiences with some submitters on that in
the past...

> > SCSI uses scsi: <driver>: for drivers but not every driver has a
> > MAINTAINERS entry.  We use either scsi: or scsi: core: for mid layer
> > things, but we're not consistent.  Block uses blk-<something>: for all
> > of it's stuff but almost no <somtehing>s have a MAINTAINERS entry.  So
> > the next thing you're going to cause is an explosion of suggested
> > MAINTAINERs entries.
>
> On the one hand, adoption of new MAINTAINERS entries has been really
> slow. Look at B, C, or P, for instance. On the other hand, if this were
> to get adopted, you'll potentially get conflicting prefixes for patches
> touching multiple files. Then what?
>
> I'm guessing a script looking at git log could come up with better
> suggestions for prefixes via popularity contest than manually maintained
> MAINTAINERS entries. It might not always get it right, but then human
> outsiders aren't going to always get it right either.
>
> Now you'll only need Someone(tm) to write the script. ;)
>
> Something quick like this:
>
> git log --since={1year} --pretty=format:%s -- <FILES> |\
>         grep -v "^\(Merge\|Revert\)" |\
>         sed 's/:[^:]*$//' |\
>         sort | uniq -c | sort -rn | head -5
>
> already gives me results that really aren't worse than some of the
> prefixes invented by drive-by contributors.
>

I agree I do not see the need to introduce something in MAINTAINERS;
from my observations maintaining MAINTAINERS, there is sufficient work
on adoption and maintenance of the existing entries already without
such an yet another additional entry. Some entries are outdated or
wrong and the janitor task of cleaning those up is already enough work
for involved janitors and enough churn for involved maintainers. So a
machine-learned approach as above is probably good enough, but if you
think you need more complex rules try to learn them from the data at
hand... certainly a nice task to do with machine learning on commit
message prefixes.

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKXUXMydH%2BVtMeuftPRgCg_PYm2iChOMkUYjO%3DQTG%3DNRM3QFiw%40mail.gmail.com.
