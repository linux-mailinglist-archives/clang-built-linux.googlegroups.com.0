Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOE2U37AKGQEQACLLWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D30A2CE4BB
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 02:13:29 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id f11sf1388311otp.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 17:13:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607044408; cv=pass;
        d=google.com; s=arc-20160816;
        b=Byz57Nct9p6Ts3mMjIxRnzv59m2StSoNGB2zK4M9fuba03YSHEor7kbKMBOC9fn6no
         EIgefgFcX1oouYc1u6XeNpUeqQdJrRbXlFThhPgXcOHh42YbjVmJxk4K1kqzT9Umrczy
         hC4zcAW/Z+LR8cP6JBrKdcG0B1EcBYO7WhDt1s85ot+jgOyBtFFUQ4pePbCw3jcXXKNp
         yJxD3CADIcCAm2WW1CWY5tigGEHiYGPN7FDnxmGNYY1jiDckgD4Yo/146o0ENDGXaWVo
         6lrFXHF/gcy1KPeaMWSbi7Y6M/9OCsUCD1DSUAKeRUyCDca1JDI1Ts+0se7XxRxz/DYf
         UHMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=l8uM9X/UHa4OTtNym/DhaRNe6ml2WQgLhr9ugDLxhro=;
        b=sM/r5hVSv5jOKRhO729W/7MuWNfZ0Rbi4c7fYDN2XujVKYQwdFwkKw39J014jUY0SR
         RhbjKEX8bNIcZ1fQlUUQ6x9Mh2XmV6Iyq49W8MKrwgxu3q/Z68TiguqVhLSGCXrGVl3A
         u0veqL3T0Fjy0vyUd/Ue0YR4vsklmsTHU+XbxaQ5mjT63ydcYNMZeCavYjplfoL2YPl/
         qCwdSBBodoZet5GDsF1/rB/iDW+7G8d0zYnF07bCEHVifESeHUkIVQbvCzrMRY47kGvp
         hI4HD9nNapA+Sr/nrwiQo5BCIWAlN158kJLqkFZZ611dV6/lN1t+WulEYY28fENKoNal
         oujg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dYGhk5TP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l8uM9X/UHa4OTtNym/DhaRNe6ml2WQgLhr9ugDLxhro=;
        b=spik6IhaYvHvklmdXhDbUVsD+LZ0mJ8fJXW+NAbgzfYBxuaPjsxFdtUD1CP+EE6EDq
         /i0Gf/2pBcLhxQqfpec0g05ON4xZQVsIrzUf/OWhgoIGrbe8s4zXtGnRkGjaw4X48GrI
         Id4XRVRLpjwDRtj0i+xdk1twGAjDoG1P3BmjFuq9oc7pQ6FTBeilnjKQwtjs/Odk0whp
         OFvIKuE/30W29rXajnVXq6JwFFhIXuCVg//yB7RB8GgMeGB3B4jlNxmailRLR4ElH3DW
         ozm4HjRgblMLvFfL2wlNKzecFmGCZEO+dDMtqmvFGVRAkJVCRD8zyOw4ZA/IJ6hKaD1b
         eDVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l8uM9X/UHa4OTtNym/DhaRNe6ml2WQgLhr9ugDLxhro=;
        b=Gu02OqzAkPA6PRa4/nZE5y1MZURel2h5umPVRalkIqndmNC7Tzt2HDTfa4OHO0CJOe
         eZexGInAqQnjBL4BBReHpmbBCQPVudH0i2U90pq2J7SCMlwP1l6tj86oEmLJijSHHewO
         Jx52L8FlA2JaNqITe3pZOnqG8lyIUtOTkTYeqrxcuHg1+I5GKAo5Y3Em/LJ0vB2HSS2L
         WEnPd1TOBl6awjObcPGvYB8jBajeG+g/Q6r0qzcq5c7RVoVLssiRsYCcdQh1UmNLrWzp
         Whd+VJhcwMSSSbDpnh59W4MjmZqECcLp8cjsDqey5CvyT1ch+WWOFS8TA7aakqGqU3sp
         zLTQ==
X-Gm-Message-State: AOAM531HlzcS0M+1xzQheGtmXQGkBqDg3gpFSrbSEo9RiZOkDa5khDp7
	NS++QDfk1HfO8oJbEKAQvxM=
X-Google-Smtp-Source: ABdhPJxFgOF9w8Tt66AwmpAXIqokCMnnGmQycWeART0kel6RTqxRCCXd3KIwYnZmyGj1LTrtKabFmw==
X-Received: by 2002:aca:5114:: with SMTP id f20mr1354273oib.107.1607044408200;
        Thu, 03 Dec 2020 17:13:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6c53:: with SMTP id g19ls1923056otq.8.gmail; Thu, 03 Dec
 2020 17:13:27 -0800 (PST)
X-Received: by 2002:a05:6830:104f:: with SMTP id b15mr1738050otp.20.1607044407817;
        Thu, 03 Dec 2020 17:13:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607044407; cv=none;
        d=google.com; s=arc-20160816;
        b=EUKkrrNu3NZxWHLdyZTZ9J97dixejckitrGa4XCWat/va1ozmtB2quDSbkKZa+iA4d
         TtH4/Sys0pebW6IiO/bCm7Du5ZRDpRhbLNPWH2vk6+a9vzjShIWiZw77sct9U2wcAnMX
         u+C6PuR4KEjL6/pVKgEQw0OPfHVh4VGjFvuVaMTtZ/Yue2wmSJmVfdx05k/nHIYDgXSq
         +Tlt2LQHARLUKL06IgDqIO97CAj9RfGqpTDaGnoo3ZnoiOZ+E58Z+mH8fz2UruJ9Ao3o
         H/0eCswFADzAY3oodpiV2aosA9AJuZ1/s/jROi0+JygnEpKCwat1pPdaifZ7/uxNJ+93
         KfNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AOrxpQhrFGHGfq5Ytdkq3w2p+LsOF6MEvdPgcjVv8Sc=;
        b=nQiFMkhwDwTlRd5F6PkEPamMqM/94taw6kamN8Pk6feXFN8Yq0GCLVib81rfex0See
         ayvtiJblM75FUxoRii9ORzDyyC8tT6iEwHyCRAXAe4KQSt5n1v7kq9r8dKB8BUjjBBfP
         RzF0lNRGMAXmPVhocjdWWW3+1xqjEtPYthfdLb1g9lCCwTKyP8jG2/A1Y2pWofqVPDY3
         tesQhd9HNsNZGWi70pUcaChsIvopSWQ0BD5raHK7N4Jsu7HvqHN4GR1eL5QUohsFv/ju
         ecD+L4dCnVgUhAxP2ha9v9lTeYHSeYUmiqw7SJy5re+BXWM30JpFzy1eltzn2k+OU5yU
         TvJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dYGhk5TP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id e1si128366oti.2.2020.12.03.17.13.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 17:13:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id f1so2171539plt.12
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 17:13:27 -0800 (PST)
X-Received: by 2002:a17:90a:6fa1:: with SMTP id e30mr1834860pjk.32.1607044406943;
 Thu, 03 Dec 2020 17:13:26 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com> <20201204011129.2493105-3-ndesaulniers@google.com>
In-Reply-To: <20201204011129.2493105-3-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Dec 2020 17:13:15 -0800
Message-ID: <CAKwvOdkZEiHK01OD420USb0j=F0LcrnRbauv9Yw26tu-GRbYkg@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nick Clifton <nickc@redhat.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dYGhk5TP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

sigh...I ran a broken script to send the series which doesn't cc folks properly.
+ lkml, linux-kbuild
(Might just resend, properly)

On Thu, Dec 3, 2020 at 5:11 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> DWARF v5 is the latest standard of the DWARF debug info format.
>
> DWARF5 wins significantly in terms of size when mixed with compression
> (CONFIG_DEBUG_INFO_COMPRESSED).
>
> Link: http://www.dwarfstd.org/doc/DWARF5.pdf
>
> Patch 1 is a cleanup that lays the ground work and isn't DWARF
> v5 specific.
> Patch 2 implements Kconfig and Kbuild support for DWARFv5.
>
> Changes from v2:
> * Drop two of the earlier patches that have been accepted already.
> * Add measurements with GCC 10.2 to commit message.
> * Update help text as per Arvind with help from Caroline.
> * Improve case/wording between DWARF Versions as per Masahiro.
>
> Changes from the RFC:
> * split patch in 3 patch series, include Fangrui's patch, too.
> * prefer `DWARF vX` format, as per Fangrui.
> * use spaces between assignment in Makefile as per Masahiro.
> * simplify setting dwarf-version-y as per Masahiro.
> * indent `prompt` in Kconfig change as per Masahiro.
> * remove explicit default in Kconfig as per Masahiro.
> * add comments to test_dwarf5_support.sh.
> * change echo in test_dwarf5_support.sh as per Masahiro.
> * remove -u from test_dwarf5_support.sh as per Masahiro.
> * add a -gdwarf-5 cc-option check to Kconfig as per Jakub.
>
> Nick Desaulniers (2):
>   Kbuild: make DWARF version a choice
>   Kbuild: implement support for DWARF v5
>
>  Makefile                          | 15 +++++++------
>  include/asm-generic/vmlinux.lds.h |  6 +++++-
>  lib/Kconfig.debug                 | 35 ++++++++++++++++++++++++++-----
>  scripts/test_dwarf5_support.sh    |  9 ++++++++
>  4 files changed, 53 insertions(+), 12 deletions(-)
>  create mode 100755 scripts/test_dwarf5_support.sh
>
> --
> 2.29.2.576.ga3fc446d84-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkZEiHK01OD420USb0j%3DF0LcrnRbauv9Yw26tu-GRbYkg%40mail.gmail.com.
