Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQU6TP3AKGQEDMX6TRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4148F1DD66B
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 20:58:12 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id z11sf5405007iom.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 11:58:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590087491; cv=pass;
        d=google.com; s=arc-20160816;
        b=NfKyhENnvhs6uUA7dA9KmEPzsXgps/ta7NA3naZPOrMCSPG0JrALn3jcgF5+VAeiZC
         MKPPo+YFO8bTBiQuISxU4K/4pq7p2akNUNlwDUb0GRBtjZVLmbssLh8OThEzeMdbzb1F
         6+4EhZoqyr6+3Zpa9UZqQMtnkeIuMMKgOkd+04ca8UmURg2L4HDOZzw0X7JvjNnKute6
         4936BAdMX1GUbI8vQ1Oa9OBASNzn7RpncLwfA4sFB0S4t2WSOc9en8/LUg5wlir/V+w2
         xWLNYWzJCZiqi1+mVg+zWJMAso7LyjAea+y3gQLukiq/f1F5oAcIzJMAxdXbtpry88w/
         91Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=EDskHJvce4w/JI8ALIBFLR6c4ZV1sZ6qPnjuI/a0j9E=;
        b=BKm6SrgoNcP9Ag1+X6nbzdJWs48WOxUvDUUP6wpfFt71hx6BzFL2WCzWivDfpXCnZA
         PGLbET/tKRDPQxZncUAnSMRc+C+qbOnVWaxlPIkiW5WYspLMmhBJ5zgKtvyvW6A7vyA4
         C1BLyHjafddutQdVKdvNQHU+X5brSlfk0+NrENCoPQYmPt9kaEkZhHl6Zf3d+C21KCha
         2Tx9oPCpE8WJ9P3K2jCSNcNVRDf0olTfgz/XpbkG9YCaYUW5UnHF20aElQU3ijwNWMOD
         H6773GEn6pv//qSLzqtYnXo8OwnVArxsg5OheAzcIPbZ5BoifhDc2gmhEpBbwtljdyWj
         oQZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ohK25jE5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EDskHJvce4w/JI8ALIBFLR6c4ZV1sZ6qPnjuI/a0j9E=;
        b=O2Ub8HqeVgbrQpuRAU5CPObYdpxLD+VNHLB8jf+riUVj2tMFdkCbdbs9KlcXVKTdOj
         awyUYJfMCCMTOKVOMuVSk6ewJIzJIWm/cvJ4QBwjiD0HL1LxtHYfuOax1Z5KCGkLCGQh
         scBu5Ha1fhCAkH3i8K4HGvi+4dxG0El/CUIUslyHoLfqw/yS4OByffhP9KYzQSxjAWno
         jWl4JA4J6pvXNKpK9ee6V2Ov6zpdauVjn2f3Ple7vuEjDc0AuOGIsVYGTWKHhCTqKG7j
         2aG6NDgQASUb7gffl5Oknn5p8Hm1AyQzPlIoq3FiWyrzDHfQraR11cMZHEHBgN7nlVXW
         LeXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EDskHJvce4w/JI8ALIBFLR6c4ZV1sZ6qPnjuI/a0j9E=;
        b=LwLmfTq8nGSNis/OKObpy0FLQp6cayZJdOHNvv97fGasXO8UyQUXsMXMgiNF8MwieS
         utRFpBeL7JQBSFCeTKnCCz0/HGJgK9aG8ulflGmHNjsculu4Q6y//3Pwv/qTSihJBn49
         v8ewKT05MJPEKIXnGkWjv642fA1QE05eCIJD4zIEAGayw+bQwGiFGYuwwyBjEopXXGyd
         HAFEdzLhN6wtXaVhCNaa0VPRA/T5wywsHJzW3ZY9JzacwLu45Ty4TOim0zYRlX2o1kLH
         Bc7yZiPoSrgHQOZNymy2yVG8biE9WmXGMQpWBxvakYzrdRzE2d1XeHpClFrALU1GdVqx
         ks4Q==
X-Gm-Message-State: AOAM532av9ZOclZKCDIJeWoXqJ4e1JwjxB+QkZuMUJWbvbaDB7AKjoIn
	GuG+fjfp5nivjJ9yWhJ+Mok=
X-Google-Smtp-Source: ABdhPJz0eE5R23wsVUdf6KAjuQNHSEKch1ZbOmd0Ug9ILwmvzEtGrHGoGhzTz7juZMfDPp1/muO92w==
X-Received: by 2002:a92:7a07:: with SMTP id v7mr10040659ilc.69.1590087490905;
        Thu, 21 May 2020 11:58:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8b14:: with SMTP id k20ls487976ion.11.gmail; Thu, 21 May
 2020 11:58:10 -0700 (PDT)
X-Received: by 2002:a5e:c249:: with SMTP id w9mr27767iop.128.1590087490182;
        Thu, 21 May 2020 11:58:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590087490; cv=none;
        d=google.com; s=arc-20160816;
        b=1DlLrB4O1KG9crrFM4pQbUlIMnCtHaG3/bylLBuHtIU/F8Q7Skvl9q1nS5K+N9z1Ma
         38XH9pCzMbkzUz51VNz1OmLxbXh+jxOzjyKPJTJp08o7VDk2dtmHCC/RRFtKF/32Vj6W
         O5I6jzWrRzLFfap9CSfbTvtQG4rxXvWAoV/GVLgBG0RD7mz/ECxGEQAHh3RBDPpFnknS
         5qFvbh5Ntwhw4mwjjbBCvVim0rNL4KPkoaQRiKWtDwBVhlLEHgvM/UUi7RdCPzqyEa0T
         beQmI1Q7UiHoz0hrwGuvRIkagTjtU+3fObtx6R9U/FpOQOPRj2XyYu7QCVaERLOzbrlQ
         euEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=u8uhdNZlzZopYdX6VdELLj92eSsyxK2ezuZ0k+Ztkd4=;
        b=0xc/UhYC6AU0mbxEfQMtXaDpZIiBLJAFJusY6pm20ckIqVHi8vsgxeo+mDTzhA9oiN
         3ca9oSo3c4LxtfSOj+KeSosv8YjT30xAqzAKo0acXFLM3m6KI8muw2DjEGAo6oE5xiZv
         EGk2f7IH32dyqUOmjb+QRAAxKQ5d+dQsFfCR6atghSaQIYGvAZnGZk82SdBbSeYnlX+W
         lE2nc6Avm5eE5U0F8YWkckI9lsM4hT+pTG21rcJOkrIheop0nd7BmMoKJlEojif3MWr6
         ObEGCKYJ0WFzNbJ+19fD5x9lSVAJACB1Afu4Lo36HCvG+dj9fRQc1rbHMtskCoVUiicL
         tkNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ohK25jE5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id s66si361767ild.2.2020.05.21.11.58.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 11:58:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id a13so3232390pls.8
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 11:58:10 -0700 (PDT)
X-Received: by 2002:a17:90b:4c47:: with SMTP id np7mr13249926pjb.101.1590087489279;
 Thu, 21 May 2020 11:58:09 -0700 (PDT)
MIME-Version: 1.0
References: <87v9kq3v8l.wl-kuninori.morimoto.gx@renesas.com> <202005212027.Y3d1auqU%lkp@intel.com>
In-Reply-To: <202005212027.Y3d1auqU%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 May 2020 11:57:57 -0700
Message-ID: <CAKwvOdmbk4MdJMSj7rvfSG7bUiajUentH+L61F7jzKFdmKyyAw@mail.gmail.com>
Subject: Re: [PATCH v2 6/7] ASoC: soc-link: add snd_soc_link_compr_shutdown()
To: Philip Li <philip.li@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ohK25jE5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::630
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

On Thu, May 21, 2020 at 5:33 AM kbuild test robot <lkp@intel.com> wrote:
>
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3393cc4cebf9969db94dc424b7a2b6195589c33b)
> reproduce (this is a W=1 build):

^ ah, nice, thanks Philip and team!
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmbk4MdJMSj7rvfSG7bUiajUentH%2BL61F7jzKFdmKyyAw%40mail.gmail.com.
