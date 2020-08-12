Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBEOX2D4QKGQENO7EC5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FFE242E43
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 19:49:06 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id j205sf611361vsd.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 10:49:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597254545; cv=pass;
        d=google.com; s=arc-20160816;
        b=xVyNXfxRbZAy95WcGzuhFrO2RiYdtzZrnOMsKwnzyug8QWU3h5vTSG9pLM2RQULfK9
         JL1bu4POQq3QmHlko7qmO5MIkp+UgWvmr3VXpabTZI+9ViSrSWNYidJEnx9dcK1D7NCa
         v9Y2+EQP0vnXmizTXUGSwY5KEe982SThIQU1U9M8N92fbBhGnCkP7FNkwjPmljb56AwZ
         BaQK4lo5qEl6PrST439l4Pcg8MZGrJPwieIsxBTZMKtjAc0IqJWU4O9iZzBmM8qvTfYH
         b4NcGNPxKfIYnPd/SX0gx30+fycicyR8Ic1D28d2Wf/2oE84jfA7LrEcd9N/760wLm8o
         rGog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=I7bP+BCo+aG+nOIrA4Fk+IBE0fACRtU6aGYLQdmzRvE=;
        b=zVtBLVnzWZMEyqJSnm3W8c99aNYG0aHDajoKTSNSKl4H5oSpuP5F3PioCqVnqQ4Qt0
         rdr2+/me2HspFm/5r77k2yrdw8RVpXipEQwNyF/+P4ekarXSW/ezIM/YLQCcBjaZiOms
         wvwstF1GMHWuQv/GBd/TuUxdqzAQGMU124CN6TTXUsAgyVCiX971JcioiJq744D+ult8
         GT1IngJyfHOtHjzrqwUCo8LAe6pA3L96Pd3t/f62pBAPhmIe7tKXX84Zz1u8TdVSB6RH
         kExZWwqogDZMcZ0DJVnALm8QCSFUH/4xTs2S1ssz1KRjHFj0lThq02O1wfdjDo6XzQRd
         Kg1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=am32WSW9;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I7bP+BCo+aG+nOIrA4Fk+IBE0fACRtU6aGYLQdmzRvE=;
        b=Nx1DsM0NnTNo03C1wk9wRk0RZhElX3qDvWiPuzPQJDaU8jnVA3s2WjoU7bfCGGrW0g
         C6Juh1C8DBtBE8roriNPJO1VAKJKOtM60MJI6BKqhjb0y0ZPrJtBNTaayfzRRy9RTaA+
         Rq5uLVooWJ7o0gtQf4cQkhH+j83I3xlqpZZxwAKE9V7+vi1JJyDqGJrXRPxeALjqI6H7
         xjsUrWIfdlYv0ZeuwG13BYiVMrq2QZcFq1xJQKXgX3iVsmYUwVFZnwdnNafdANpN/q8S
         0x6ClyUEQvi2eEUj6oh24RGpcNQNLgaJqD9lwuCVLiundwiM3yEDoxYakJMg/sX1ID9e
         BXJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I7bP+BCo+aG+nOIrA4Fk+IBE0fACRtU6aGYLQdmzRvE=;
        b=C4b/MwHhVR2J0GZ3vOD5hMqid1sfYr5OcZFYtTx4mMeGmoeId+6SGR+OXEhoC38mcg
         7K9bVxwWceC9WcCO5akml8+zCLiG9o9D4jR5Xn9OBxO7aNA03drZ8WgythkUBbn1Ol4+
         1WMjGRQbGQCL8Agl9/4+iXt56ami6YmskkZK9WoESUN/L/LYuVAXr3RGQrdMAR8+abtu
         A9IQ5RwQsEOwzxq6AhNxHuNiQS7GjkEHTCLFUDdXLH2AnwQw4LCTJ428tLWb3c4DQNZx
         l624MlMuJv/ZjI1Kutd/kW/YLDs6KdLMOOT06CSfG5cwV1ohCUaTJa/1K2fIrlbxg/hR
         IsZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ORuZ3d7EvkDxMEG3HwfNv1oADI4fzDsn2ksUK3D1RWiNcahDZ
	bkNdos5X2VwteR8yPD1d8PU=
X-Google-Smtp-Source: ABdhPJxCjMYGToEQ9O8I6F5mj9Czctz2Kf0GrBUcYmXZHbKoFd/tAUqvENlM2rPhu5YW/SYUSii6TQ==
X-Received: by 2002:a67:b608:: with SMTP id d8mr246089vsm.113.1597254545601;
        Wed, 12 Aug 2020 10:49:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:fc4a:: with SMTP id a71ls139426vki.8.gmail; Wed, 12 Aug
 2020 10:49:05 -0700 (PDT)
X-Received: by 2002:a1f:3045:: with SMTP id w66mr507990vkw.35.1597254545235;
        Wed, 12 Aug 2020 10:49:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597254545; cv=none;
        d=google.com; s=arc-20160816;
        b=OwepxJcoA1mVU2o4QtMran/nbvDHy6ljTmJ69Y4d7EjRorVPxvcMiXx11hLutwEKuy
         Kqxi+5Q3YC4FG0Mqf4cwJTCMHHT67DKvma4D5BuSQssm0zdXvBxpAM5ZJhqXfvQClsY1
         VFe9mUXsT8LvewcqUAlSGGgGd89oh396uQQSig57pAt+QQGumLOSG6O5228XjaKyLoNX
         n19Wq5aBew069wznfy+pyOs3sNP/IqL9G+H3v49RfGmA4Oovbp+hwz6CJHfesRoSIylt
         JapDFIQgApJZnyuNuAjrsoCbFGkS7hgQWwP3m0gtwOA/kumD7B5L45JDCVJAc3yb542G
         yRWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=Ij7DTc0+G5aYQMMUK117Wrc+BtKR/opUoeRVB4ysu5w=;
        b=AB6QcSOcqH4s1TIZFytEPUenPdZrj7UlYVszwbcw7ELTeawz+QwvlLfzsah30r9UDU
         rkO9OsZ57WSFbZtAlTsPtAG/AuzfyYgMhIcgZRKPXcRxHIPRcn4aonbzxlO5OV0qSPqN
         D42mWuJa6nUeOQsQGfBYlmN6Ud4bt1opfvHeQiJhvBcedhUk9mi2+mlzDGsR8Af54kCO
         wnU8zKIu9sECB58dbeeaqSGPL0CKOI50ifr/ySb3qusDZgLsANoztQ3I2hX8eV34Z6PQ
         cHEZKQfd2trre6qlWlvYfdUxjC25eJAESqG7PQ0nIEY3ec9XIXuanz2w1DZf96D3Vgz8
         Y9wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=am32WSW9;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id g19si99564uab.1.2020.08.12.10.49.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Aug 2020 10:49:05 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 07CHmT21017881
	for <clang-built-linux@googlegroups.com>; Thu, 13 Aug 2020 02:48:30 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 07CHmT21017881
X-Nifty-SrcIP: [209.85.217.41]
Received: by mail-vs1-f41.google.com with SMTP id j23so1535156vsq.7
        for <clang-built-linux@googlegroups.com>; Wed, 12 Aug 2020 10:48:30 -0700 (PDT)
X-Received: by 2002:a67:7c11:: with SMTP id x17mr254093vsc.155.1597254509215;
 Wed, 12 Aug 2020 10:48:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnni_G2tw+0eCLQQvvdcz97Fy1-cBjzPvLwbBNDu1-KqQ@mail.gmail.com>
 <20200728004736.3590053-1-nhuck@google.com> <CAK7LNAT-AO9_Y-qunRvPbBYf7GZnoE6bxYKFNtcdKAKV8d_A+w@mail.gmail.com>
 <CAJkfWY5ywOtO6fAyPd0B2BjEWamJRRMgg4et0uVq2bpkJSECwA@mail.gmail.com>
 <CAK7LNAQVdhMraYejrTsGZSLFJDk4CVf6ke-bsQ7kaDUM2Lf4SA@mail.gmail.com> <CAJkfWY5kooS1cPFq+3s0oFT8=O_vszAMnJ8BBOmy084oi+4tgw@mail.gmail.com>
In-Reply-To: <CAJkfWY5kooS1cPFq+3s0oFT8=O_vszAMnJ8BBOmy084oi+4tgw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 13 Aug 2020 02:47:52 +0900
X-Gmail-Original-Message-ID: <CAK7LNASi+as9+2c=a9+cwbj4DjPfqpo50KxEp2EUFAc_Vs4yXg@mail.gmail.com>
Message-ID: <CAK7LNASi+as9+2c=a9+cwbj4DjPfqpo50KxEp2EUFAc_Vs4yXg@mail.gmail.com>
Subject: Re: [PATCH v7] Makefile: Add clang-tidy and static analyzer support
 to makefile
To: Nathan Huckleberry <nhuck@google.com>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Pirama Arumuga Nainar <pirama@google.com>,
        Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=am32WSW9;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Aug 12, 2020 at 10:24 AM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Sounds good. Do you think this patch is ready to land then?


I do not think so.

I pointed out the CC=clang check was not working.
I see false positive errors from GCC commands.



This patch does not use the benefit of Makefile.

Makefile is used to describe the dependency
between a target and its prerequisites,
and how to update the target.

Make compares the timestamps between the
targets and prerequisites, then determines
which targets need updating.


See your code.


clang-tidy:
ifdef CONFIG_CC_IS_CLANG
       $(PYTHON3) scripts/clang-tools/gen_compile_commands.py
       $(PYTHON3) scripts/clang-tools/run-clang-tools.py clang-tidy
compile_commands.json
else
       $(error clang-tidy requires CC=clang)
endif


This always runs two commands sequentially.
It rebuilds compile_commands.json even if
nothing in the source tree has been changed.

If you do this, there is no strong reason to use Make,
and actually you can rewrite it in a shell script:


clang_tidy () {
  if [ "$CONFIG_CC_IS_CLANG = "y" ]; then
    $PYTHON3 scripts/clang-tools/gen_compile_commands.py
    $PYTHON3 scripts/clang-tools/run-clang-tools.py clang-tidy
compile_commands.json
  else
    echo "clang-tidy requires CC=clang"
    exit 1
  fi
}




I changed the rules to Makefile-ish style.

https://patchwork.kernel.org/project/linux-kbuild/list/?series=331893


I will wait for comments for the new version.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASi%2Bas9%2B2c%3Da9%2Bcwbj4DjPfqpo50KxEp2EUFAc_Vs4yXg%40mail.gmail.com.
