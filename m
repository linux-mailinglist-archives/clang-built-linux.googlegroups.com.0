Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSPLT2EQMGQE23GFLZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 020323F8B39
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 17:39:55 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id b9-20020a170902d50900b0012db04e2bf0sf1174661plg.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 08:39:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629992393; cv=pass;
        d=google.com; s=arc-20160816;
        b=walGtHumnqctRNTs62r/kKnkeQlIfhI/brmEPj6fR2HMWWjR7vQBcT+itFdrswUXyk
         KcQ3ZqG0wcXgbm1lmdCUErMAi/fKOFszee4KifSrWOyP9C9gEgBQzRySRgB8+HmszbRM
         pYj2TP6InVq1Bj9UC/tTCAh5WhvXdJ4QiiawWtwVmspffPc9OToRyYqZDR/6jfvcLWEL
         71zSOktkqcsfD6BoapVsEu6iATk5vxUumtC9NwirsNnjPN/5y9uottgoX43GksoFgVQ9
         WkU9i6NQ9LESFxtsLTUYxM+UCOqgFadbs87lLsJrdLW60/BUETU38JT2IUlAPxN4eepm
         LveQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oygjKi6C2yhaXAhipGU6B0K5nlNk4v25eaYdEd1AUl8=;
        b=ZNgxMHS/cXd5kMBfcMiaNz5avoWhV/URAajH30JyydPIaBJ5Tc0I2Z3xYAQ3aXO5MB
         iBsQ0HxQ655nHsf72wIGvRU1xCR+J0AlHwF+bJ3QR85/IpfSuhApZe4jZdEzwh21uwB5
         3HSVv3xJITQsMUWa0EkCVuzSuKSHcZ5mnX1J8OOGQvDjTrV44UxSE+F4eAf1lNrQcVQH
         j8Pq+/nLAW8VW/Lu4KmzdSSFFSCA6nmZMap2PA5C5r/OcIOca/MxywobdYJW7J0LUAMY
         ifANGaVpd+KTPEzJsjr9l4QZarmU6qJ66CSJhcrJH0xhFuEDk2ILNITA6VMnIdaY49UB
         JeTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BR2UH4Z+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:user-agent:in-reply-to:references
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oygjKi6C2yhaXAhipGU6B0K5nlNk4v25eaYdEd1AUl8=;
        b=NPpTWZSHS7KUMByYdK1flZ/4nls72cD0BSIplBs/vvyXEkIN4VpvztQdvAGWBvYNZ7
         yhaK2gUJ3S8G5zjSbSPbRp5yC9Hg0/a3WTR6Gd8hXbjl7qrjAR1+8QQTYv3s1n9wbaaz
         0yHEMbajU8Pi0+E/MesKqoMP3HCrhFiLQ4E3l0NsYmdlZMTQCvZR5TztsSqZIHaV2e0z
         nAYIZpyDoTASkLJXVl+2Q40lJBXNYJc7Z+gqYO0HzCefgpepQKjDCI5wSGkz4GYjy0jK
         /bbr3XDJf8wFxvG1lDlaWx99uoPFU/miqFMC10G04C8ttXZmGvHrfoTXbq7alNUClW4T
         KQwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:user-agent
         :in-reply-to:references:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oygjKi6C2yhaXAhipGU6B0K5nlNk4v25eaYdEd1AUl8=;
        b=eC2mSh6TWakRSpIyAYPlKn6ftvgNdy/mJy9JxpwXNQhBYrbByMZex2yq0x/l+V3lNK
         APOLsTL8/ew7hXmPXIcaxedCfZ+Ddp1GlPM/tCuZUq1+/OE8lI5Y+8XwkxZ/HBr8wrmm
         SnvwB2I6l9L2zBtZBQM2PpiZGGasrmAUyyt6eFxK7F4XR0yGd+Lrgs9XlSCr4a5yPaDV
         hTN2bADIRAzjf4OaqO0EiaMkS44dvLDXVfy7Il8k1grj0vXJTWDPKvh77TvSN3Kh36tt
         aQ6O8uQlkVPx4msR/Ta7NfMQ3QcvwG89nPjanSUWT6cz8kG8A5Pxquo02Ic+y2p+oxKo
         UeAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532OLD3GuHSf63QZLakz1tIX/SS6miCePexp5+t78N5lhp3JJm+M
	M9TiKP9uuoko5eTbcDbVyMM=
X-Google-Smtp-Source: ABdhPJwLmBcrIlJgQAw0YH+6NWrh874tgwh4+rANCPGKUbb9LK5QR2wZ7e7XiH/q3ztSWlVjTED2TA==
X-Received: by 2002:a65:6642:: with SMTP id z2mr3825140pgv.240.1629992393673;
        Thu, 26 Aug 2021 08:39:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:360b:: with SMTP id ml11ls5052331pjb.1.canary-gmail;
 Thu, 26 Aug 2021 08:39:53 -0700 (PDT)
X-Received: by 2002:a17:90a:df0f:: with SMTP id gp15mr5181601pjb.174.1629992393104;
        Thu, 26 Aug 2021 08:39:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629992393; cv=none;
        d=google.com; s=arc-20160816;
        b=f5InfoPlCrl7MfFUkk9bn6oVbM2ad8e38qZNWEwopzxOHI4/jSnuLJfmX0WiZvAsCj
         FoPB20YCUfI3sDQmJ3+Vdz/jyBA7/eIyoP1OHn0e0lEQFFzshWn8e4TSlgdtuQyk4v9T
         da+5f4vosMzA87VUtR7lWUeQ096b110t8yOvROZrNHL57/A/G04A2FtUoHxnVWtuEe3F
         E7zTZowokL5JHVijTQosSKNQWRjQbzYXyMGexZrrefauCwPLaTd7DlBA2yJdKwzjuuoq
         ustEXUErI7VpWjtDFzomxfn2J6nt+OEnjiKGVJqF1cxudjGDY1EkAIsJ9f07WtoP/p3d
         Z6YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:dkim-signature;
        bh=0x3JVYJjoPp3mCHZGSPU/br7LvYDmK0AvhxHSp9lei4=;
        b=kesM162MgbZ/T6mylloQn+nXhow4OvXnhhL1414HZhl2DUTvhyDigPJxQZoHXUc+I+
         7pRKUmg8DVs36OO7GakpqsFXqBk+Gv0vMGNMOkVhgh9iI8sM6w0/zhPwhyUK2vxBNFhj
         2lMpvJ5Jp1Bi22i41NuLmyHthNUq1g2Dyl3ZrRs2kfbIHNmnT9G1EPKke9IrsSUG8ONH
         9nIZjiyP5/bybt3YsOioWiOp+848hl+naA/zbVJQV9YjOk5U73Rk49DdPQ2HzkGfCV9H
         fymtW8cS9yJ8j9+KO3ZsbXmwJvn8jmaJ0b00dmzRg2ycLfC+hFV4lo1FUA7zJlpfdDOq
         kwcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BR2UH4Z+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id e11si389218pgm.0.2021.08.26.08.39.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 08:39:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id f11-20020a17090aa78b00b0018e98a7cddaso2644872pjq.4
        for <clang-built-linux@googlegroups.com>; Thu, 26 Aug 2021 08:39:53 -0700 (PDT)
X-Received: by 2002:a17:90a:14e4:: with SMTP id k91mr17431519pja.3.1629992392852;
        Thu, 26 Aug 2021 08:39:52 -0700 (PDT)
Received: from ?IPv6:::1? ([2600:6c55:4b00:c768:1835:a5a0:2702:1052])
        by smtp.gmail.com with ESMTPSA id z131sm3466093pfc.159.2021.08.26.08.39.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 08:39:52 -0700 (PDT)
Date: Thu, 26 Aug 2021 08:39:47 -0700
From: Kees Cook <keescook@chromium.org>
To: Vincent MAILHOL <mailhol.vincent@wanadoo.fr>
CC: open list <linux-kernel@vger.kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Ayush Sawal <ayush.sawal@chelsio.com>,
 Vinay Kumar Yadav <vinay.yadav@chelsio.com>,
 Rohit Maheshwari <rohitm@chelsio.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>,
 Jakub Kicinski <kuba@kernel.org>, Stanislaw Gruszka <stf_xl@wp.pl>,
 Luca Coelho <luciano.coelho@intel.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>,
 Johannes Berg <johannes.berg@intel.com>,
 Mordechay Goodstein <mordechay.goodstein@intel.com>,
 Lee Jones <lee.jones@linaro.org>, Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 Arunachalam Santhanam <arunachalam.santhanam@in.bosch.com>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 linux-crypto@vger.kernel.org, ath10k@lists.infradead.org,
 linux-wireless@vger.kernel.org, netdev <netdev@vger.kernel.org>,
 linux-scsi@vger.kernel.org, linux-can <linux-can@vger.kernel.org>,
 bpf@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Keith Packard <keithp@keithp.com>, Dan Williams <dan.j.williams@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, clang-built-linux@googlegroups.com,
 linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 2/5] treewide: Replace open-coded flex arrays in unions
User-Agent: K-9 Mail for Android
In-Reply-To: <CAMZ6RqJMWaRCB3sZa-it804Sv6aFyZ9J3aQyAStMY-1GAwR1Jg@mail.gmail.com>
References: <20210826050458.1540622-1-keescook@chromium.org> <20210826050458.1540622-3-keescook@chromium.org> <CAMZ6RqJMWaRCB3sZa-it804Sv6aFyZ9J3aQyAStMY-1GAwR1Jg@mail.gmail.com>
Message-ID: <AD5C7E3B-6984-49D9-8666-B3BE90588F1F@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=BR2UH4Z+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d
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



On August 26, 2021 12:36:27 AM PDT, Vincent MAILHOL <mailhol.vincent@wanadoo.fr> wrote:
>On Thu. 26 Aug 2021 at 14:04, Kees Cook <keescook@chromium.org> wrote:
>> In support of enabling -Warray-bounds and -Wzero-length-bounds and
>> correctly handling run-time memcpy() bounds checking, replace all
>> open-coded flexible arrays (i.e. 0-element arrays) in unions with the
>> flex_array() helper macro.
>
>Nitpick: the commit description says flex_array() but the code is
>actually DECLARE_FLEX_ARRAY() or __DECLARE_FLEX_ARRAY().

Ah yes, thanks! I had renamed the macro but missed these references. Now fixed!

-Kees

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/AD5C7E3B-6984-49D9-8666-B3BE90588F1F%40chromium.org.
