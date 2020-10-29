Return-Path: <clang-built-linux+bncBDYJPJO25UGBBONS5T6AKGQEL2VHYXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id E906929F55B
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 20:34:18 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id i19sf2683955ioa.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 12:34:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604000058; cv=pass;
        d=google.com; s=arc-20160816;
        b=p1OmeOHKJUBE09sVR7DZEDQmf3z0Yo3L8nZtnKX0S5peP3sMCJnQSA5iHhhLcyt1iS
         dW3lNTnazptmLEBL0FsP+a0TD6xck4fGEKbduNa2I1jJAHnXsPux5ciP+jXiar6uEyeF
         VCQB1KjGGWYAO3LB/mZramvYe6Il1pQ2eDcskZO3ZVS4+k4pKhbYV9cwb0p/T8bwcL2k
         5+IMCNOOKJqhMxlDn6bmR0lth+TyVazEhu+TLJTGHFZFSRRtNNajgdOOHoYtqk49tVmY
         bArYhFM5KVAblnvHWDkd7kM2Oeqm6GfRvp4UOg5qUytaYvc2ScLq/RlRbiAiJFYf39BO
         lUmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=XoE5ZJYXDAdvbMYE4Fsp9hVwwNemVQjT7RViY9Q3wRQ=;
        b=WyCw7lrIYuIySRod8P2gTyhlLwikVzG42TSC19TwfeszkZjVIFM/eYtNbILZgvxkCh
         URppmqH6wktCR2P06+4s0sYomdSWscQuXVaH4VhmBwMHSPMeQmsIoZwqBmHfdExOOvnd
         OvlfdLYZIbF650s/EqumTL/JX1jbxreRdAxbqQsjz5euAIp1BwzvYzwv7UEXR+X4+Dp2
         a1TB+VGvo7rCMtnTvNuyAf5Jz3aikaCsQ1QywF+fJWhRwSyVmHgWE6BlUuM7sariQpAv
         Gqz3k5I046ckANAgVIEBF0/A483IZLvApphK0FDZmuFxUM27nKh5e6D+uDdEJIWprl3R
         VkSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qyAdMLTe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XoE5ZJYXDAdvbMYE4Fsp9hVwwNemVQjT7RViY9Q3wRQ=;
        b=FAqogLXB1Fwsl8rURxSzAqZp2Ivn4jeaRL9yg4KypelGOhNoVROIy45/Tt4Sgvw4md
         TAiktYnVr2j1kj5Vmf3lmWmMN673qNTCJl30XzMfD4WLdXsosidTxYaA+StsS66nK6NB
         W7rv4tawmLZwgQmd4HskP2RXiwZNGb0NKEaITH5nz52pCeBj/DOn98PGk5fUzadCc2Yt
         WsBwZ7Sl2Me3mYLUNO+x9EP9jMGO/R+oTDiI3w40p5g8jHdzx6dsq2lOJK0F9EFSCrU7
         gc7C7fOfSnp4u3DT3+I8KVzyCxZ75zeW1BygM3PSoPVlywLHnp3bk2U9QldJlRO4M1N8
         1pJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XoE5ZJYXDAdvbMYE4Fsp9hVwwNemVQjT7RViY9Q3wRQ=;
        b=pl9ivGihkUkzEnJUN2W0hq+ALnJ3QeLq8dTFuGMt4ReBGwUSBfjxi24o8UC9gS/hnI
         3NYv8qZs2q+DC88TcmFlCptPliw616TYds0T202UCP6EiQ44NnC9yhZqZzz549Da7V2K
         CdjaMuJ32/ONAXMU/43LxU+OO1Yye7p7HCGL5EudjY0EAAhgQPbzDnx/EO3BS3Sl61lg
         VDE7kZKkJC6sBw44G0iaVSYzo/MJHjFjrt9NHsKzBsfHad2rWzurxT1DGP7NMNV8SqeZ
         T+tXoptgk78olTgc6eH7I4+1rALwFizloeS2d+X+tlcXQ9Dx0Odi7jVQfPrSgwZVySSg
         1Yjw==
X-Gm-Message-State: AOAM53313UPTpWnUVX8FQCp3HgaZUTjapzOqeojTC+p53Q1KgNeD7tlV
	QC5tLFtUOfCPNPNnuHDb+BM=
X-Google-Smtp-Source: ABdhPJx7P9Mp9bI6krt3O9wY6ujmDa5oUhtUQ9bCridnZ/WzbqtvQuejRoGRkf3CR7LEEIA6wgUzYA==
X-Received: by 2002:a05:6e02:931:: with SMTP id o17mr4579793ilt.273.1604000057874;
        Thu, 29 Oct 2020 12:34:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2d8e:: with SMTP id k14ls574931iow.3.gmail; Thu, 29
 Oct 2020 12:34:17 -0700 (PDT)
X-Received: by 2002:a6b:8d97:: with SMTP id p145mr4696875iod.190.1604000057538;
        Thu, 29 Oct 2020 12:34:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604000057; cv=none;
        d=google.com; s=arc-20160816;
        b=PpY4/T3aGe7KS5V6ZWt00IHrDYrXF4ZY1KeWdMwPLp+FtHXgJhhXyaRJiXRkoZIMh+
         hsmLcIoh3jN6TZ+zyx1CZsPMEGPc+dQhLXfjDVXbdfny1JTZxm8uxmrJfnGUjWkKPcvY
         IVUDFe1/SgvFF2gfPaJwGijMamXq/Vj4hRSnYPJG3kxbl90Z4JFx0o6hHmEohNNzfQ6q
         SN8nTpRr4h9WXKpgjl5YyDKU2LcgoFUNkw7uSP9E93mzlj3wvN6ezgMMrOgaWlJkpHoR
         u0jcN7DlteWBNwxTEXSL76a6KMz6HxpH0uwpCK2Uf4uIMUNVGm3BuWgq9p/IwaCrGUXM
         ToAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=no+LFVggH1X+W4BzHVXAaNv+yc1wDOUghNOGzIROf18=;
        b=gh6P7IMs3KNrpaJwp3I5jOaQYp8rZhs8z1m9DxzP6EnMl/ej0mVPg90NrvDlFSFewL
         AfOvDDc9gNgltXPMEIUDhF+B711wwFGd4rt9GAx0sBA9pm7PlTP3fcUzrCcALiItxgRu
         Y7Ym9d8l2BP077t/4/lZ9pYh3EsasTqxRB60nCwsC/4P6CX5DjXIukzTuKZm0NiaOxQu
         aDfdoaDPgY+qcDhHvPX/Js+t5ZS0E5mCVq+x1nhjFtNK0C3JHbsfsCvXJ1SSjwLWZYQY
         eEYaOzYq5yb2H3LliEynWxfiHBEGRDdDvpSIPIxqH81lsLyKH81LVevoV5V5fMoSQ9Fz
         0PoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qyAdMLTe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id d25si225499ioz.2.2020.10.29.12.34.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 12:34:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id o9so1774618plx.10
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 12:34:17 -0700 (PDT)
X-Received: by 2002:a17:902:8ecc:b029:d6:991d:1193 with SMTP id
 x12-20020a1709028eccb02900d6991d1193mr1428555plo.56.1604000056830; Thu, 29
 Oct 2020 12:34:16 -0700 (PDT)
MIME-Version: 1.0
References: <20201026213040.3889546-1-arnd@kernel.org> <20201026213040.3889546-3-arnd@kernel.org>
In-Reply-To: <20201026213040.3889546-3-arnd@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Oct 2020 12:34:05 -0700
Message-ID: <CAKwvOdka+UFvwntx-Dcx3oX2nJEkcdo+krm8gu016vPVBF8MBQ@mail.gmail.com>
Subject: Re: [PATCH net-next 03/11] rsxx: remove extraneous 'const' qualifier
To: Arnd Bergmann <arnd@kernel.org>
Cc: Joshua Morris <josh.h.morris@us.ibm.com>, Philip Kelleher <pjk1939@linux.ibm.com>, 
	Arnd Bergmann <arnd@arndb.de>, Jens Axboe <axboe@kernel.dk>, 
	Nathan Chancellor <natechancellor@gmail.com>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, linux-block@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qyAdMLTe;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Mon, Oct 26, 2020 at 2:31 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> The returned string from rsxx_card_state_to_str is 'const',
> but the other qualifier doesn't change anything here except
> causing a warning with 'clang -Wextra':
>
> drivers/block/rsxx/core.c:393:21: warning: 'const' type qualifier on return type has no effect [-Wignored-qualifiers]
> static const char * const rsxx_card_state_to_str(unsigned int state)
>
> Fixes: f37912039eb0 ("block: IBM RamSan 70/80 trivial changes.")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/block/rsxx/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/block/rsxx/core.c b/drivers/block/rsxx/core.c
> index 63f549889f87..d0af46d7b681 100644
> --- a/drivers/block/rsxx/core.c
> +++ b/drivers/block/rsxx/core.c
> @@ -390,7 +390,7 @@ static irqreturn_t rsxx_isr(int irq, void *pdata)
>  }
>
>  /*----------------- Card Event Handler -------------------*/
> -static const char * const rsxx_card_state_to_str(unsigned int state)
> +static const char *rsxx_card_state_to_str(unsigned int state)
>  {
>         static const char * const state_strings[] = {
>                 "Unknown", "Shutdown", "Starting", "Formatting",
> --
> 2.27.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdka%2BUFvwntx-Dcx3oX2nJEkcdo%2Bkrm8gu016vPVBF8MBQ%40mail.gmail.com.
