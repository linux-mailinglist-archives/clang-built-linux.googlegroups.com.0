Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBPU5XWBQMGQEVHL65DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id AE369358CD8
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:43:11 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id v11sf1700249qvl.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:43:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617907390; cv=pass;
        d=google.com; s=arc-20160816;
        b=N105fj5naZeD3xI7znMteO8vHOB2KBj8etljGPvUTVdBiy9C7Cq3cFzW8+obkRsyCk
         i+FVZxWFqlVJBsji1fY4A++q1G+p5z68AbMIPETWizWfq4tFtpOGFeDfdl6EEcEeaofd
         y6DPPUKblH9BAJr1vSTgSSe7R08d4P7zAWkT+PyPMDGQW8hGgPjOcHVBa5qbwNWAm9iT
         aT2Tm+bhGHfL8etOAMMahfjU5PfC9hzzy7SM4UKVooVyKJN91XNBNuGAQycsQFvRef2U
         W64jGodrQv0L6gYkA+1eNe3nNiNJSaaAK5F8/OZ/7mizUBna095jNnj7hsE1yKb0gpMi
         84sA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YC45LpYaxXc6L+yukOkgPyOrXJ7GXoQqMvQml7uV65o=;
        b=QdPqvhBQ1zuQMN9GnzTiklM+uvJ7mZDparUC3rnEmSAJdcALvRithkim5Rfj2Cncuw
         d/znHNmi/hFk662U+A0qn5Wgjp6c6Es/uCbfcEFjT+TkMkrj1RAM5R+psjofjQ2/Mi27
         PjLabtpUk8CURqTuHyIL3PkUV6i72yiSx1DYNyNXNBo7eqynV0y3hJKH8wFUHQSVOhah
         Al4x1dSnMVt0yUjkmWM08BpfzEduYq3ZeaYT/DBX+NBsVw0wYZ3giqrNDk7Wl5d1gsJH
         M8MMwzhE294bde6YdItlDeWaN/Za3YqPMeAdU4yaazntVfg2FItjeQqKir9sTlMEDBSn
         WwUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DbBileZu;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::22a as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YC45LpYaxXc6L+yukOkgPyOrXJ7GXoQqMvQml7uV65o=;
        b=I7fnK2Lfu630R/DsmxzC7nULSc0E4YxHJepCv9wqtH3xDR+NTx89Bu1Eky3Gn0w1Au
         WDjTIkxjv6QAR+XErs0LvTAPTt9cPz9N89mAQDbi+CbjVlCfUduLRokNcg21+T/C7DcK
         AeFt7ZdC35VmYr/TWEHpvIL3iy9vyC2v8uSzeJd/opmmjKMn66d4Qy9KRViEkA2aPqbJ
         SiS+hueBJt09/lJOIlhM0RToE5XzhaeF4ZR5kGJKXhZds/fLpkIJ6gK83dAuktPepmpn
         fqrCNyx6Zo2VGpjsOvewI9pHLkT1T9yHLFZgHZPV6Fw/mwg7fgXJcIxKZudd0ex0MXgj
         HiSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YC45LpYaxXc6L+yukOkgPyOrXJ7GXoQqMvQml7uV65o=;
        b=c7x+1+JERnBsmrBdFjte5RkdLXy4YtTBv7xXyIGjQDtAjCSLn2PnCnPo46E1Kv0V2Y
         7ZwkJYM1wugfNTtXUo14OPn6u0iZuljPIxbK2DDJmO9sGj1A/QxtQMFxwCGttuUhwtPU
         bOclvEU7vGMj++Irg5hbQVfYRq88764C1+eYEF7j8VXNf+ZV0TbF4w+YY+6wx/k8KPMi
         QS3muPumTTxdWYDkz+vyoWNweoPnureLuxITfv59g9e3Pq51Pz7M1Z/I0IW3cvg9HsoN
         ZT0AWQrqQ7vNroeAnlilgKJ+4/nf1k7XeEDDqAB/QDePUW6UnzcgqNgaWZF/KdlDobbn
         E73Q==
X-Gm-Message-State: AOAM531Xp3t8OKw+tD3V4bsIaHKnhaGLEXE+RPjCVm0qViVrEK/0QXOH
	cIhZtLY9E2P8BDz8o6ij/B8=
X-Google-Smtp-Source: ABdhPJy1I3CuivgW4uh1upJle4cGF+hQaCgc+tAT6MXA2OFPNNzd0//J7+TuqNkP8yhT5Z8R7GY46w==
X-Received: by 2002:a05:620a:b01:: with SMTP id t1mr9736254qkg.422.1617907390829;
        Thu, 08 Apr 2021 11:43:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f20e:: with SMTP id m14ls3674372qkg.8.gmail; Thu, 08 Apr
 2021 11:43:10 -0700 (PDT)
X-Received: by 2002:a37:9087:: with SMTP id s129mr10269865qkd.297.1617907390443;
        Thu, 08 Apr 2021 11:43:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617907390; cv=none;
        d=google.com; s=arc-20160816;
        b=WAD4DpYoXmqwyEUlqan+WHbfQDxFvb+ZUblj1yZhGFglRho+/W8jKueMyaZACaHDgd
         n8urptGVbAdRe2zNVvDBjathknkxrno4MOUDvwzaVPelYsD+zFoYZV+TLQUaiQY6gFkO
         FsN9olq8J/2KqLOq7dGk+JHBd66kkVsv7jHu2EwJHFleRAm5uuq9HJP9H257BNFZi5at
         yuw0QiY3zITE97Zc7p+Ahl0FAPGEcrz8A/m9nbuzGKQX8dbZOjndnoP1ApyZnHCEtX6c
         b9myUapevYou/m29ONY2TQYkbnIbOkhZJneo3jJTqgbDiQq4cXMFcDAlikmZu0lNSgq4
         ZoFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xz3WWuK9ivXqRhBUKbaDFsjSTwxUZn+PwdntH13EvCw=;
        b=tKxHooBNYTbSL0qzGdQsiG09I+paIDmvvWhu8kCjnHJnqAgGWcFVjDehfGmMj9DM7v
         posf1WSDa4N61PHZJjFPxslqHYBx75gEihUL0eVQS6VPXe07Vvp0Obul7Z4dO6ekX33A
         ylkUXk7Dxsz4CR5pbp2y3wVjdg0ostDDeGysazMKQu69ow6bYLx95YU0d2jmD6DancW+
         fMimEZGErFITS4xcyc2Fa/9z1q/Gxadz7hrGwFcK6IiMQKdFcf8Zn+KEvrFc+Fwl50Ii
         YHybs6BeD/AWB1kJCHlPJmwl3mVpODtKS7zwNQ/IORNfAKd10cbB9lhT8O7+KqJmCDr2
         GP2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DbBileZu;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::22a as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com. [2607:f8b0:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id w22si37119qtt.0.2021.04.08.11.43.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:43:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::22a as permitted sender) client-ip=2607:f8b0:4864:20::22a;
Received: by mail-oi1-x22a.google.com with SMTP id n140so3190659oig.9
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:43:10 -0700 (PDT)
X-Received: by 2002:aca:2b07:: with SMTP id i7mr7444647oik.66.1617907389872;
 Thu, 08 Apr 2021 11:43:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210330230249.709221-1-jiancai@google.com> <20210330232946.m5p7426macyjduzm@archlinux-ax161>
 <114a5697-9b5c-daf1-f0fc-dc190d4db74d@roeck-us.net> <CA+SOCLKbrOS9HJHLqRrdeq2ene_Rjs42ak9UzA=jtYb0hqWY1g@mail.gmail.com>
 <CA+SOCLLBgKtTz732O5zcrNs_F=iS6C2bE4HBmJfoPTum3Yu1oQ@mail.gmail.com>
 <20210331215802.r4rp6wynjqutdoup@archlinux-ax161> <CAKwvOdmoud9=Uf2xN7q1c1gP06ZNU4K2-Q5PDD-LTynHC+qOMA@mail.gmail.com>
 <CA+SOCLL67K=reMX=pBQzRV6dYbbS6EPVeOxZ8Xdw90P91Zb8Zw@mail.gmail.com> <20210408181210.u7cudatr7zcmbmb2@archlinux-ax161>
In-Reply-To: <20210408181210.u7cudatr7zcmbmb2@archlinux-ax161>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 8 Apr 2021 11:42:58 -0700
Message-ID: <CA+SOCLKC+7BS+-Cd+y9PQsfKADMQeYrzumRzb=oCuQmmxR6TPw@mail.gmail.com>
Subject: Re: [PATCH] blk-mq: fix alignment mismatch.
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Jens Axboe <axboe@kernel.dk>, 
	Guenter Roeck <linux@roeck-us.net>, Christopher Di Bella <cjdb@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-block@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DbBileZu;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::22a
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

Sounds good! Thanks for the help and the link.

On Thu, Apr 8, 2021 at 11:12 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Hi Jian,
>
> On Thu, Apr 08, 2021 at 10:57:54AM -0700, Jian Cai wrote:
> > So this issue is blocking the LLVM upgrading on ChromeOS. Nathan, do
> > you mind sending out the smaller patch like Nick suggested just to see
> > what feedback we could get? I could send it for you if you are busy,
> > and please let me know what tags I should use in that case.
> >
> > Thanks,
> > Jian
>
> I will go ahead and send the smaller patch at some point today.
>
> For what it's worth, Nick brought up https://reviews.llvm.org/D100037,
> which may be relevant here.
>
> Cheers,
> Nathan
>
> > On Wed, Mar 31, 2021 at 3:06 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Wed, Mar 31, 2021 at 2:58 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > > >
> > > > On Wed, Mar 31, 2021 at 02:27:03PM -0700, Jian Cai wrote:
> > > > >
> > > > > I just realized you already proposed solutions for skipping the check
> > > > > in https://lore.kernel.org/linux-block/20210310225240.4epj2mdmzt4vurr3@archlinux-ax161/#t.
> > > > > Do you have any plans to send them for review?
> > > >
> > > > I was hoping to gather some feedback on which option would be preferred
> > > > by Jens and the other ClangBuiltLinux folks before I sent them along. I
> > > > can send the first just to see what kind of feedback I can gather.
> > >
> > > Either approach is fine by me. The smaller might be easier to get
> > > accepted into stable. The larger approach will probably become more
> > > useful in the future (having the diag infra work properly with clang).
> > > I think the ball is kind of in Jens' court to decide.  Would doing
> > > both be appropriate, Jens? Have the smaller patch tagged for stable
> > > disabling it for the whole file, then another commit on top not tagged
> > > for stable that adds the diag infra, and a third on top replacing the
> > > file level warning disablement with local diags to isolate this down
> > > to one case?  It's a fair but small amount of churn IMO; but if Jens
> > > is not opposed it seems fine?
> > > --
> > > Thanks,
> > > ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLKC%2B7BS%2B-Cd%2By9PQsfKADMQeYrzumRzb%3DoCuQmmxR6TPw%40mail.gmail.com.
