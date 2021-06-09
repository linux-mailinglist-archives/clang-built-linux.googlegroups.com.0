Return-Path: <clang-built-linux+bncBCM5BN4V4QDBBJM7QODAMGQEPQI46YA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F38033A1732
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 16:26:46 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id q4-20020a056e020784b02901e2ee9a8333sf18734879ils.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Jun 2021 07:26:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623248805; cv=pass;
        d=google.com; s=arc-20160816;
        b=sIape5Y0ZDZaGWkfB2vg6bLhrcaS5w9A06VbIewide9aLzTWj2eX2PEWpf0NBpT2hm
         NgxP9P4FkKQJm3wqcMYSQen05EF8RDJXcvEATFfLnfpk5VplCLd1eN568H3ZWwpItHex
         jN7jfxmXqJ0vipWxwiNnjXEFpq1E2YjVa0R6mvRBUIAfIzg57nFUiu3tXmmp/i1y7FNz
         dgJo4ynWyWeq+sS8/wdbNNosQzztjtYcTaFk1Y4gxkjZ7YlJBA2RUYXiWRX6QeAGA7mB
         0OprxXB2b7940ztElK7goetzTdc2zDpQZePiy5+vFP05fMPAvktXrDt5kcxbcydlzfC2
         DzZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-filter:sender
         :dkim-signature;
        bh=/w3rUYEKaVgN0SQYBUJVMZ23uwjYJnk879mrXrxnTV8=;
        b=N/25NSUJLfhQRXT463lyUjzF58P4B2wc60XA/j43L2O1x0Hc1D7bwCjKnwHb+lU9dK
         DYtqqbjmH97PGCsFokqZO0nOxBg55oukkGRShrUAI8dOHfghzQyw3PCEp/Ar6YLbEq0m
         u6oQPAHiHBWMa/PxsS13efgsLNASynpriBGaOV9xGsalUOHiC+iuGr1F2kZ/1s648kx+
         yde4oQCuSSbIra2t94tebXVQ1cqm9eQXAdthO9IezPtO+xHg/gskUGpYAyYk739ZF96w
         kWEZaTP4aEUMwZO575kFZTxYhEV6bNgeExobZ0pqkE6YC/rql+2KNvb5wYO87En4CKJQ
         FVBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=mJQ9RnRC;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/w3rUYEKaVgN0SQYBUJVMZ23uwjYJnk879mrXrxnTV8=;
        b=I6xr7UtQyv6YMSRl4T0YA4UgQQGTOk7BKBRCs/9k4588H08/0tErHYfAuD/c7BaRVQ
         4XamFtVb/oLP0moakTvBbZy4uY04GqcUvr+6UxSOJ1o6RWJ/cGR+Ov8dDI/6wHJCkPMj
         p5s1shnoNmUJiQRV6clpULEeeRNDoJyPeRvVrAEgJAAoa/1BSQkykpmPMv105Yj91lrP
         0F69+5VM9IflfLz0bVlaTgZRaxNdFf5AGgRwry8hSAubnml/XPq6a3Xdo304Tt8kFFQx
         gOAC9WaCdCFscgGaGHyHF5S7Tv+dUVTPdlpfDkhMBqMWnSnGZq0sQfsYL7dGGkbsWHzX
         itSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:message-id:subject:from:to:cc
         :date:in-reply-to:references:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/w3rUYEKaVgN0SQYBUJVMZ23uwjYJnk879mrXrxnTV8=;
        b=HoVs+4jbuKV2hXgs+phIsg2nequbPSZtk7HjcPOWSeLRxNgR0btL9k1hU5Ks7My5zz
         iRQNHK6hmv30OjTKlfY9XBeD+fNPXbf7G1wXYuURN+YrEbRcejjyncm6x34lWfnt1wUc
         ENJC+CLmvJlrS7TqBi4HCaFfXhcn+XPvMUg2mbpqa+glrZzHHIblMTPxBOPimDcATK7r
         rvsSV+pGZ94NQmPGjj++/pXoR9M8NFwz/Fs4AZFiL3CzqjamFVxemsmtxKfVeJY0fQcx
         XV/6G+gAHC3Hlj+IGCCVgylXIaHxui4J2VAer9iaiiov/5XPvcVGsqxUWZcN617PTCjr
         KXig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZV8MciMBxeDQ9XFw7VWQH7dLXZhe1OYtr18O5RYCNhW1JFgnW
	dmqvbIZQnj+bual8UKtIh5A=
X-Google-Smtp-Source: ABdhPJzHd9ptPTU/wOwWvrVgS+bPhZdMULKeSFWSN/TGGOT08TGuqCA4Uog2SuTeOgrU8LfQ/jLygQ==
X-Received: by 2002:a92:d412:: with SMTP id q18mr26657ilm.258.1623248805385;
        Wed, 09 Jun 2021 07:26:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:b26:: with SMTP id e6ls727412ilu.8.gmail; Wed, 09
 Jun 2021 07:26:44 -0700 (PDT)
X-Received: by 2002:a92:d48a:: with SMTP id p10mr30751ilg.206.1623248804924;
        Wed, 09 Jun 2021 07:26:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623248804; cv=none;
        d=google.com; s=arc-20160816;
        b=aBAwunf/4JXhAe/o6nuIPYFsDNjOpdTOcyUyYnPRyfAYJnQHcUTNitZkeonwydTstw
         zM4Hp2HDOTuJ+rQdI1Hr7Q6envk+iagvtxnvxmbtAgPhday+fd5skozkGysL6zokd5MN
         5gACCDfgvwgMYC1A4Mygkg37tFIzK0bBThxCer8A9H+Cs2DMnCetyEaIrz5Fj20hxgjM
         yAMlsn1OlRs+frnsBL67OM1TlkJ0AexfH1T3BqdVCLv9OTNV16+pc04Gxe53/MlxgNp3
         O1sA/NlG4+WptPjND0jq0AZ2uaOrNrxbfmElKKMoSmZdWB769+g+PeQJ92giNpdQ2zJp
         DcEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-filter;
        bh=h6o44sXR20MBpD+68d/AtJ1ddf69cXVZqeVwg1gbIAw=;
        b=KnTHYmHpWvExgJMTB8BnRomSfh3cwM73jAdUqETGgFFykLW/STeTkLTlzyjseTygG6
         XJHFgbS9FqDBijr/rah0UULrUN7B/tzxgDKlvBg7w5LbtbX3v6z6QPytN/Is9u964MzZ
         7UQHT1fQ2nkyBcs1A9D1qzZLbnWInQpz/4gAyieqttugdHwS4iXy46p9SMUSAdt+eL4J
         Mh3S0bQdSB4x2/fGpD/309wsX5Xj0MraNNDMhuWm4EXmBIBLShHGic9op+1w3OSwBr1o
         i1FZ2Ds4ByzxrAfS8UsjUvQUQc2ZiXZJSJVvC2UxoQ3rvX5jBD3IAtrgWC2QHGP05DuE
         Euzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=mJQ9RnRC;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id h17si14280ile.3.2021.06.09.07.26.44
        for <clang-built-linux@googlegroups.com>;
        Wed, 09 Jun 2021 07:26:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Received: from nramas-ThinkStation-P520 (c-73-42-176-67.hsd1.wa.comcast.net [73.42.176.67])
	by linux.microsoft.com (Postfix) with ESMTPSA id 0542020B7188;
	Wed,  9 Jun 2021 07:26:44 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 0542020B7188
Message-ID: <f5579d401738d5c72b359a158c825e5c2bc3e746.camel@linux.microsoft.com>
Subject: Re: security/integrity/ima/ima_kexec.c:81:6: warning: no previous
 prototype for function 'ima_add_kexec_buffer'
From: nramas <nramas@linux.microsoft.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
 linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, Prakhar
 Srivastava <prsriva@linux.microsoft.com>, Thiago Jung Bauermann
 <bauerman@linux.ibm.com>
Date: Wed, 09 Jun 2021 07:26:43 -0700
In-Reply-To: <202106091229.uCfgCAOZ-lkp@intel.com>
References: <202106091229.uCfgCAOZ-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: nramas@linux.microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux.microsoft.com header.s=default header.b=mJQ9RnRC;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates
 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
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

On Wed, 2021-06-09 at 12:10 +0800, kernel test robot wrote:

Hi,

>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> > > security/integrity/ima/ima_kexec.c:81:6: warning: no previous
> > > prototype for function 'ima_add_kexec_buffer' [-Wmissing-
> > > prototypes]
>    void ima_add_kexec_buffer(struct kimage *image)
>         ^

"linux/ima.h" needs to be included in
"security/integrity/ima/ima_kexec.c" to fix the above warning.

Thanks for reporting. I will post a patch shortly.

 -lakshmi

>    security/integrity/ima/ima_kexec.c:81:1: note: declare 'static' if
> the function is not intended to be used outside of this translation
> unit
>    void ima_add_kexec_buffer(struct kimage *image)
>    ^
>    static 
>    1 warning generated.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f5579d401738d5c72b359a158c825e5c2bc3e746.camel%40linux.microsoft.com.
