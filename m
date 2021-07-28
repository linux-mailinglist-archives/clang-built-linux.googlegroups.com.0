Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDORQ2EAMGQECZWCWXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E1F3D959D
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 20:57:18 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id l12-20020a05622a050cb029025ca4fbcc12sf1501528qtx.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 11:57:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627498637; cv=pass;
        d=google.com; s=arc-20160816;
        b=dCJpPVn3dg89qzrg8kYnB3pNp3plCE7xh8UzMGh7YTN9Rdwe/EjoahsP18rUyK1Xw5
         36lb5YaKekjx1dG19EiektPNM9Jo0rVpQC/+5pK6Mkfznd3VaG6p4BzZry6KvvNQ0fBm
         SpwWqdN6z+A99oR/Xp6jU5cKOo0fKL3c50XU+CQ67NNcmOI4ALpJ5VIsD2ZTFZ7SNX2t
         Bt+CTLGumYfPzssl1UZUd11A9fQHAAVK6pqN0Mfd3Tg5WsTtlR/sbZmskhOmjC0XW1G1
         ISRtOjWAosGKBAZKNSpc6Mp0kLMQjPfEQdHflOOhhdmGYvnmj3O+uNpLT8hzYHwwUEqV
         MFOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=52okd+lSIkvNIJBtu38VZLY4MPqhRdANhlj3Qh7kr1Y=;
        b=hLlPQGEXmATzqb06JfDqmxgvtQkm10OmOs6b0hLukqCQRaSczVwjO5jJExNDWlMxdU
         IG6U37O7iaOA3NoB1kTnSm1uBU62UWyQUdiANVbxsVM5AzIzLP5JTBi0SqzISpUEAccO
         iDj+w+MKSgF2iWGNMzjHWU/60VsQ9qgJpF7NNSGPoflNB/QrPgDTcjIckIpkqfiqDLNg
         Vec86uwkcXfjNLfHKHEXF8/2CZrN+k0DUUJbS50aF9zF2jhZ//IY7kbFuuzpLZcVsaDW
         dRk6PPtBqxk5YRUfPQBH+lA56fgjoHOLVcTCjDZXPqxx772Z4ppFmpbFm2vlXdpzR5/R
         Wsfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="CT/CUy6V";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=52okd+lSIkvNIJBtu38VZLY4MPqhRdANhlj3Qh7kr1Y=;
        b=kwBQF7mItTaC8zxQ0gdI4cYBpUDkss8mRJYrUCETMcTcFscofyeb53UjQ+z+dHLxt5
         LCAxqWWrGGbdJAUlMKwDsWzmxZ7cf17wKCLxaAYawPigaIQ2oK35ohjL3HiCOeKtSxz1
         TKOHIt1Cv0IlKXNktfSr3W1mzX4Un3zR+EB0L0XJMUA/PaPNHMDQYMLK2xzF9x/1e3Vo
         hRJyOL4ooUr0OLVWPuDcsfBdCU+72+HKZLsFW8OjU6K+2g272LB9sWkXtxvEL8tFIWL8
         BQdxxX3NkcaOYeQKuvm0TgMbf1L1wn59bxFYtiBwBfSvT5y00eTJCS0JzFVWfOGcPjN/
         eJug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=52okd+lSIkvNIJBtu38VZLY4MPqhRdANhlj3Qh7kr1Y=;
        b=WBwaFCJvRjNq9uX34YyxCw3NxpecZOzelO04/iDciD+mmyFijzQmCpjxajacee+CXE
         65zbyiqUTG12JXLxYRVOJ5fWOGyAaXleq04KGRwxMTOk3ocnSXuKMtCWiBnK4OG6tJ4l
         kqhVs0RHlM1Fyzm43DTIIdfe6886i4+q2aVcSn5HQGBRKKHkxinlUBvQL71FrZrCDVVP
         7QraAELEnOeeAhAjvZcKOgFO7FX4tSaHZCDxzzhxLMFzOR/BASLQziCjkn2DcVSl2cz9
         jFhtX/FXTdldjwznlF9cKFVzhq1TVgCtgsbB6Mq/bXtLqvIQPH4AMZQaQAvU+DMf1nhu
         IbRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qq4EgNhsURnbL2KaoXI/zGLAD9/JXF0KImCLCMHxVx5EqDHOh
	DpGofIBStP1Y19Tr4NQyrfo=
X-Google-Smtp-Source: ABdhPJzv8N7JRDgrRfP08dmGE+Cecud4t/uzxJ3qBqQpCfolC43xUiJQf8N8yXDTo5x0gUVYkECAKA==
X-Received: by 2002:ae9:c119:: with SMTP id z25mr1216681qki.40.1627498637414;
        Wed, 28 Jul 2021 11:57:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:d686:: with SMTP id k6ls986524qvi.11.gmail; Wed, 28 Jul
 2021 11:57:17 -0700 (PDT)
X-Received: by 2002:a05:6214:2463:: with SMTP id im3mr1472357qvb.53.1627498636932;
        Wed, 28 Jul 2021 11:57:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627498636; cv=none;
        d=google.com; s=arc-20160816;
        b=JNt0KNRTzbfHiCImKR4bR36q3afokDalyP0WGx3qX8OX378v+0FrcDYqijEkvMmLac
         vZ85wR80nzCA30qYKuujjn9kYaTy7yy3cWUKe4WtDC8VlEt7n2OUiVfiAl7095B55BJe
         Fa1B9jR06L+CNKC/1ROGDicioraxsgC7bbQvGrDV+C+u0QY3+bihtgqDPrm+SxsBfsyo
         RUrJc0icmYXJAX0Huzk9T06MDZXGSQ5Iez6mP+RnyM9zBF3qR+9X5LHRJd5vWMDHP5T9
         xsUCCMU/L/miVJq+egpHjDZz4U4f0CEQde6elDCa41ugPkgt+Y1Y8a5vi7PGbP5+sIEp
         q4rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=127Od1Z5L5mrPERJlQTktPz34XXJuvOrvHqT3KKh12Q=;
        b=TnQ282SGyWe8283YB20DbYjpDBRu/IIVXnABhoxFoZ2Ym3pfp86GcbUmkhCK79C+Qa
         Z2z3Vx9IljqMwVBG1ks3xlsaMlwpsjayDJOtR2H49TtCt9xOuqgk6b3kXkRvko2En53Q
         Zqmv8R1nCWqL5rgRKuvBKLy6MOS7xhr1iTXfeLvWOqNhEj1CDYLZU0SQT3xEBtWRMUsh
         2cksfJtqW3NVUf6B7VyIetS00wxVLJj08kRawj4enT8IkgO2N7ozI0ivTso/fGSkZT3B
         pmeMmGu+c4TqGW/8tvojV5qwl8YhitasBh3cl0KUD/lzo+j+qZ0bhhTqq1RH4ZStqEzz
         /23Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="CT/CUy6V";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id s29si50472qtc.5.2021.07.28.11.57.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 11:57:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id e21so3841598pla.5
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 11:57:16 -0700 (PDT)
X-Received: by 2002:a63:4c26:: with SMTP id z38mr313058pga.376.1627498636621;
        Wed, 28 Jul 2021 11:57:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d14sm5792859pjc.0.2021.07.28.11.57.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 11:57:16 -0700 (PDT)
Date: Wed, 28 Jul 2021 11:57:15 -0700
From: Kees Cook <keescook@chromium.org>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	Brian King <brking@linux.vnet.ibm.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>
Subject: Re: [PATCH 36/64] scsi: ibmvscsi: Avoid multi-field memset()
 overflow by aiming at srp
Message-ID: <202107281152.515A3BA@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-37-keescook@chromium.org>
 <yq135rzp79c.fsf@ca-mkp.ca.oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <yq135rzp79c.fsf@ca-mkp.ca.oracle.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="CT/CUy6V";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Jul 27, 2021 at 09:39:39PM -0400, Martin K. Petersen wrote:
> 
> Kees,
> 
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memset(), avoid intentionally writing across
> > neighboring fields.
> >
> > Instead of writing beyond the end of evt_struct->iu.srp.cmd, target the
> > upper union (evt_struct->iu.srp) instead, as that's what is being wiped.
> >
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Orthogonal to your change, it wasn't immediately obvious to me that
> SRP_MAX_IU_LEN was the correct length to use for an srp_cmd. However, I
> traversed the nested unions and it does look OK.

Yeah, I had the same fun. Maybe I should add a BUILD_BUG_ON() here to
help illustrate the relationship? I did that in a few other places where
the equalities weren't very clear.

For example, change it to:

+	BUILD_BUG_ON(sizeof(evt_struct->iu.srp) != SRP_MAX_IU_LEN);
+	memset(&evt_struct->iu.srp, 0x00, sizeof(evt_struct->iu.srp));
 	srp_cmd = &evt_struct->iu.srp.cmd;
-	memset(srp_cmd, 0x00, SRP_MAX_IU_LEN);

> 
> For good measure I copied Tyrel and Brian.
> 
> Acked-by: Martin K. Petersen <martin.petersen@oracle.com>

For the moment, I'll leave the patch as-is unless you prefer having
the BUILD_BUG_ON(). :)

Thanks!

-Kees

> 
> > ---
> >  drivers/scsi/ibmvscsi/ibmvscsi.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/scsi/ibmvscsi/ibmvscsi.c b/drivers/scsi/ibmvscsi/ibmvscsi.c
> > index e6a3eaaa57d9..7e8beb42d2d3 100644
> > --- a/drivers/scsi/ibmvscsi/ibmvscsi.c
> > +++ b/drivers/scsi/ibmvscsi/ibmvscsi.c
> > @@ -1055,8 +1055,8 @@ static int ibmvscsi_queuecommand_lck(struct scsi_cmnd *cmnd,
> >  		return SCSI_MLQUEUE_HOST_BUSY;
> >  
> >  	/* Set up the actual SRP IU */
> > +	memset(&evt_struct->iu.srp, 0x00, SRP_MAX_IU_LEN);
> >  	srp_cmd = &evt_struct->iu.srp.cmd;
> > -	memset(srp_cmd, 0x00, SRP_MAX_IU_LEN);
> >  	srp_cmd->opcode = SRP_CMD;
> >  	memcpy(srp_cmd->cdb, cmnd->cmnd, sizeof(srp_cmd->cdb));
> >  	int_to_scsilun(lun, &srp_cmd->lun);
> 
> -- 
> Martin K. Petersen	Oracle Linux Engineering


-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107281152.515A3BA%40keescook.
