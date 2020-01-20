Return-Path: <clang-built-linux+bncBDF57NG2XIHRBV44S3YQKGQEWGYWBHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4151F14293C
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 12:26:17 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id x189sf19122776pgd.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 03:26:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579519576; cv=pass;
        d=google.com; s=arc-20160816;
        b=q/3VRNbxjjr23WSKc3qSGx2OBBGGG6uaonWEZGlUjjChnkYWam8McE05vdLLm3QnYw
         TJDOEHu5Bh328qcQ8XhFBVDCwgw9PSxHHaiEMaTKL1T2hLU/cR4okiNOE0fFouc/axIo
         E6KJlwyhOvqZTaIuwwxrm0/h6Yqg4L9Nnx4tNrQXGakT9iPnOglgwNDG0qNEysR77dKe
         56j85KrwU4G/H9gfpB/MBsa7CRC7sU2nnRF41l0z5xX7TNAPOs42vQVtc4lI7EPudYXM
         W353PXQg/Bt5dAXxDX5tz+u3bcqBucTHdgjGsDKVODBfdHOersA1wKMQ7ScB7xvaL1MF
         bRmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=sRQpNxzOaJs7uoqzOvlEaAO30Ip2401r6fVA2+QZ6JM=;
        b=ZwoFO4k24TfLXZLkhTbOCxKPtrJvh5Ykjr8zvRrowuomAdRA6IOJZEU+yn2Hexw648
         UW4iB+Ah3aAJi1wmDyH8eK/xf6MWU+RdU3CnfERQVVWxUMCfaHMK/PGiQO7vo7d29BDP
         CFkTOOg1DKaLu2jO52F8TaMx95TQpBDRQUbOjEQTrMg0VeaZQeiJEFncDJt1UBan2bU/
         8LFnAE05fNX4ctoQEzwIVtd2G33GBRVeLNNjMKdwdz+JyaBpR5lW8qChy8FzEhnJuBre
         oUP2aX0Gm0dzi8LRph8luGilBqrtf8Z4gI4mM2SIAkNQ60c6Gpj+BGAdRHQ4K5PNy/Au
         +2Hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=zoiGWUQL;
       spf=pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sRQpNxzOaJs7uoqzOvlEaAO30Ip2401r6fVA2+QZ6JM=;
        b=YAjPy3bzt4eWh14xDwTTL7kFpBhBUGOKS9grrodJeNyK2VETRoKTeoBYl9PH71idoI
         LbKJXJCfYIdW6qb4smGe2KAtMlJPoamXgG4LxBdTr2Jl8gWlg4EPf9GktJCeg5ww6RwW
         OMcZbtMnJSo+2IzwAWwor1ftZC4Tr6KROvMstBccAcpldj/Oq2SS/w7UC+ADDacn/TuV
         Gc2sokvCAD6SNjd791qzGBuuV4r/Fa4cmG5FvOO9oThD1rF2naA4ja9aZcpy51sr+3aI
         gYURNnIBkR1zMkk89Gk+Qc+de61a8+SU1EsgMf9o89sYId/p9KmUChfk/ZPg+V4TqiXP
         4zoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sRQpNxzOaJs7uoqzOvlEaAO30Ip2401r6fVA2+QZ6JM=;
        b=N4aRdquyRfB0E4w46F02jgBIGxAN+aQYxSV7zjXipvdV2orpjixIrKFbZa7czCtqaj
         rfOI041aW/j6EpQ5D3Qh3LPMm2kscwtk+Ldj46iOBcZKCpBwKrMhnzY+2JojMDN9tbE4
         xcr3VCHCJNO/OCLOOFfH5bN/XoFWeX6iRbDaKMzfqC/WwwL8twB9RQI3FWay2/pte9YD
         BbIDt9zpomakuY1EPjl6oZMj47OVh33m2ucyOYslhpiKwJNtjSVKoC2BqEmG94cTo41V
         Igf0K5oEPlqw8yGpHXkpuHrSoCd/5FYU3qNbj4yK4f3zXFRJRFL7kqoW4Rm2Tk8NCTvI
         LyBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWc1LA7LbXNMtxRdni2mx1uEg1L8K7ZWvB5NARiKCss+2WG5U8w
	uHq9OjHLggtt3G6R6Cwue/k=
X-Google-Smtp-Source: APXvYqxWBCJ5RmUGfSnYmKd9Mnw59zoauxPXQulYwc0QlNZaq3zRIPqilN9pF56YJgm2rogLYsMNSQ==
X-Received: by 2002:a65:68d4:: with SMTP id k20mr60582950pgt.142.1579519575938;
        Mon, 20 Jan 2020 03:26:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ad06:: with SMTP id r6ls6108034pjq.3.canary-gmail;
 Mon, 20 Jan 2020 03:26:15 -0800 (PST)
X-Received: by 2002:a17:90a:ac02:: with SMTP id o2mr23386903pjq.93.1579519575629;
        Mon, 20 Jan 2020 03:26:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579519575; cv=none;
        d=google.com; s=arc-20160816;
        b=FeJXo9CwcEUlzLecpfO5N8IXzu5gGmm+PpnNiRh1xQrWgh8V7DmIBnpAJ2OIt2dZU6
         E30QGk8xcyiZc0/wZt9vZu7wir8OlcpgDc7TtKHdx5j9PTr1zIywOWdbLkxZBRm7/3pp
         RHtEIFo7O3LJG8VLlE0cSSeiX7o488JbznC7NWfSiRNzw9mTbPVI5oZ2UwTdUsfaZNa0
         3RcaHDZLvr+M5NtIGbPExzsQ0IXIc5Tu6ckTJDUxmZi+jGcoeg8oaogcib1emV6T0aD5
         7NyQTXlN/51EHnn+mk5xcsKubKHcPrG7iGy+mweqKCxPVLpO8LvjpSK7br4fiuJA9mUL
         szZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+QrjNjPG/DY5+TEdC5uJWY8ByCtGQfHlt+6TWxLSsd4=;
        b=YE+oNJ3kxWfA7SiBTqkwWcz4FlSbYyfkAxPOHgwfBg3ul71TD/MxNUfSc1UGMWgbMB
         Gx2aWTlKj34vH8Ck0pRq2064TbMSTDgUeUzyQG1HNE53B2iP/B/AfeWW6xEmW/cPgTVK
         49oNB92g13xwhpOOfsWVyk88HeuXsquH/g9wMIDYb4F23slSrZJteZDXzdXuU2BbAjKG
         plefv1hjUhx3ffYy9ID+x3/+tXyQ+qEcQpsUlxRX7kGo50dpXkyO00HE3kvP0rHigshN
         jDsy16xsIWzx40Xypbai6Ty4t1xt1LWZLRHc9mCSsOILeAgKRMFqQvem2zPPrLvwg+Hu
         bPkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=zoiGWUQL;
       spf=pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id y13si962903plp.0.2020.01.20.03.26.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jan 2020 03:26:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Received: by mail-vs1-xe43.google.com with SMTP id b4so18708237vsa.12
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 03:26:15 -0800 (PST)
X-Received: by 2002:a67:314e:: with SMTP id x75mr11583092vsx.35.1579519574713;
 Mon, 20 Jan 2020 03:26:14 -0800 (PST)
MIME-Version: 1.0
References: <20200120031023.32482-1-zhang.chunyan@linaro.org>
 <20200120033223.897-1-zhang.chunyan@linaro.org> <65f7272c-ecea-03de-433b-21ba2e672d20@intel.com>
 <CAAfSe-vjmFGkK5Enj9Nj_qrERJbNQTLejpVL+JVJLG7tgNhT9w@mail.gmail.com>
In-Reply-To: <CAAfSe-vjmFGkK5Enj9Nj_qrERJbNQTLejpVL+JVJLG7tgNhT9w@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 20 Jan 2020 12:25:38 +0100
Message-ID: <CAPDyKFq0PnCwcjENc+SJvkFKsuC-iWMX0t6QNqdo89JEGGk-=w@mail.gmail.com>
Subject: Re: [PATCH v2] mmc: sdhci: fix an issue of mixing different types
To: Chunyan Zhang <zhang.lyra@gmail.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>, Faiz Abbas <faiz_abbas@ti.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Chunyan Zhang <zhang.chunyan@linaro.org>, 
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ulf.hansson@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=zoiGWUQL;       spf=pass
 (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e43
 as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Mon, 20 Jan 2020 at 09:14, Chunyan Zhang <zhang.lyra@gmail.com> wrote:
>
> On Mon, 20 Jan 2020 at 15:15, Adrian Hunter <adrian.hunter@intel.com> wrote:
> >
> > On 20/01/20 5:32 am, Chunyan Zhang wrote:
> > > Fix an issue reported by sparse, since mixed types of parameters are
> > > used on calling dmaengine_prep_slave_sg().
> > >
> > > Fixes: 36e1da441fec (mmc: sdhci: add support for using external DMA devices)
> >
> > That commit number is only in next
>
> Ok, so should this line be removed?

Normally yes, because I may rebase my next branch.

However, at this point in time I am not planning for a rebase, so let's keep it.

>
> >
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > > Signed-off-by: Chunyan Zhang <zhang.chunyan@linaro.org>
> > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> >
> > Acked-by: Adrian Hunter <adrian.hunter@intel.com>
>
> Thank you!
>
> Chunyan

[...]

Applied for next, thanks!

Kind regards
Uffe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPDyKFq0PnCwcjENc%2BSJvkFKsuC-iWMX0t6QNqdo89JEGGk-%3Dw%40mail.gmail.com.
