Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBE4YQLWAKGQEC4QEN6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E25B4850
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 09:32:35 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id s25sf490591wmh.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 00:32:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568705555; cv=pass;
        d=google.com; s=arc-20160816;
        b=aek2wFdtwTj0lklkCT6i1BQsf73EDzSG99NtE7zXPDnpsh9bP4/15Cj0m+74PT4zoj
         1ySn3ZyeXW0//7oqs2STXOfJl7OqJobmhwDh/Kf8cINoiziDHFuOEuwN7gb9ejug6C0l
         z1Y7OAkqXsC2dhQestrTJEImAZlIxtsS9QShE4Q1aIieeGd7hRlzzBiR4VOF8Txg8gkk
         vzueIRDXlobaO90mAfiVza3t/cG9vF8MG+1owaMuy3XRGxS9upMIqXdm4yM8MQ5Yhi+a
         omMf+srMj4pnDglgZ7//LbkpbuGwAYzf9YEUsKybTUhY3Y1tGqYguhGxUV7x7K006H/V
         eKhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=0l5Xc8gnOWD2cIDYXEdXwmxxRT+77ND/nr9BkPOxQ00=;
        b=gTvKW7NWQEIhn/n+jljmAK4wKiWCcME+Q3ktIztbZvmek/zstQ5DRYRFO4KlV7KV5B
         b0vuIXWI3jyhikU0MyHMkFXPsVj49dqQleZiF46IagRRvSVhUf4uKpxVcOiFhdcyQ/Es
         HQIeMbcCeOZl27GMgIrW6t28AdWzOlT4Zos4s6P+Nog24lXfGpfsMs2amXMOj9cE+ihX
         pobr/lFOxNUcbFZbtokor4bb9iorVCfmG9UNj9nb0KvtLKRegCRXfN1/q4nCyH5b/76I
         eoRL8Yu17EPxKf3r2YiCmo/guSIJ4oFDYnmPY1ot2Dy9LZ3JefbVraZq98tctoJt55xp
         pUUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ag1lgpym;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0l5Xc8gnOWD2cIDYXEdXwmxxRT+77ND/nr9BkPOxQ00=;
        b=nUPd5TWkl0zRSuB0uV5pz9pYxpbEsgrjNXiFsWYgMig/HRYfDqmrXBApHfj/FRkc4G
         l8j0ogLAtXFXUOR7hC2sMIITlzYj5xbjSmwPfjV5FPkOXUjKGFkdx5hizhDj7MPHWXtR
         7WAfqF5qYyFH2trKVEBrZ/wZjtdgNovRJa0q+lHUzp9uf5JMn7Czd9lX/z+yI5ElPrZ9
         yFrmsB6Q9m0q3zmtUNBOaz9/ZVWAu39YaW0d1a5on8FD0/MFJcmV7A3c3liOR1FaIRhx
         uS+fKaWgfy4HTo/bo6V00BrnT4NWxGdhTo7RVraskh/PPVwqcLYm9RtA4iUD1aFxbPTi
         tfBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0l5Xc8gnOWD2cIDYXEdXwmxxRT+77ND/nr9BkPOxQ00=;
        b=tljTv2eXvcuSL1XWFpKOOaDGGfK5CzMncAM7/06Wdn6MiNB79o/TyXNSn2nnHgQY2Y
         qWSmGZlk30Zi4dEGsbtVsksupFAp87LHcMR5GDFhekZBV7orw7Hk4UwVe1sr0lwjiENX
         JFjMX+KEQyWdFjz2N1V0JxiFtoe+25NynEFY7RyZO18XfAt/vxzfoJPkYo01Oh5oAcx6
         kxdiMxPAc6P4djiB71U6BR+WVP0T6qfcy2vQv2QXGYldDijQOd8Axm2KoQl39EUNw881
         itcXN3MUraiZuYzyryxGTOO6/7TVJ8zy3Aj3sAZCRZyFdB+B6FQWEGVYniCOeWdmnk7I
         vqYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0l5Xc8gnOWD2cIDYXEdXwmxxRT+77ND/nr9BkPOxQ00=;
        b=qHto0LOxSR5yDi0cBtUxlkpnlzK9Jwkas0uawgChbpVAVDVXLgx/GR1S0O2K88knBY
         PQgzGq/ulN7bLbvQlAwwifSYC7ARWtyS7WqFXmTI8adZxPMvHEqzKQjMkkJOnDVO5nIU
         05nQkTbeuwcXWCNvUzTY03t/H/q5eiGtrQYQJzXkVhg2EvM9FoRab8kdaRVXrMoUkQoW
         H8J6hAxFC29E+oCVQaCKg+YBJhAjeHsJDxnQIJ1EPlCwgnDAoqhR47A2PipZxa5Eps4W
         +sxKUc5Iz4OzFpUzw1Vebc0LkfURxJui9NrGfbbhW1VmgIsoEabPRm3PTRE8kC3NGjBm
         8X8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWrYC6rM8BgaeloPw+lQOnLAuc+OZQQTrhrto9GxAmB38b+3fF3
	IXeeiidf/q4LmGtzPdwRd60=
X-Google-Smtp-Source: APXvYqyl7AFdExr+RZHW8VPuazuHSwj2K/MxbNHq5xhmGkpacs1EKYWAIe5+AfSyVCZAYgkkj/zFPA==
X-Received: by 2002:a1c:28d4:: with SMTP id o203mr2331539wmo.142.1568705555361;
        Tue, 17 Sep 2019 00:32:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a54b:: with SMTP id o72ls599577wme.2.gmail; Tue, 17 Sep
 2019 00:32:34 -0700 (PDT)
X-Received: by 2002:a1c:4108:: with SMTP id o8mr2362464wma.129.1568705554972;
        Tue, 17 Sep 2019 00:32:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568705554; cv=none;
        d=google.com; s=arc-20160816;
        b=iK2LSnktrgzbb38WnFInRy5LLzDK6O7RqsyPFivISPETGEvl6L25xi6nSYQXZhokPe
         ekX9RQ7vXa1co7z5Q5KQhxdg4pL9yFOx/HCBG8luEk4iJ3e2n7dNrcoQ7J2cjjc8/YID
         fOE9i3Tj9Zla94OoXtq4q7BElTMyadGus5TgqT4cZioGSkikHwrRnSDCV9+0+Hud0UP+
         uXlzmO5Qp6tdDYxZP9VBnPBTWiYBoVFFZfc1ShVcSzcZqEXIjORpGwy0jfpQJheJSEWk
         DMehEIZl7pNjRGPh9bfIJ0IdVnDKZgiz++Lof3kgYHPjpaxMZgjeVMwnTuQTpCd3dXIR
         YIUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=oyhBT4NnP3XekqJBrOaMJ0r2KPZOM4Cejny690HOkpg=;
        b=Nw2htBqEN8+CJzczxFtPd/HszcnSwa9DfWtki5dxt6KbjFtUSZI83hwutsjYLNRQXW
         Tn2k+UdGTvAWZo/E7D7WBu9Wh8PkkroRkEx7ImLYCtpZC35SE9F0Y/tc5wScdJVi91Gw
         FDDf1dwiOETv+twf0KEPQWvTtj1J0Pctg1nYCR2ZqT78LmVnrh2b4zZiQi56v8ZVrTG6
         owPZmakyS6dWhtMlhb0nAtURckUE9ts0GefIn8Mj0dBY+NOUoDUB9XxmDzRjyp613ulv
         NQti35XBHB5ZmzPYenfUxp2FB7oR5oEdEMLSNMj/NH/83lnn65qcTlwAGE39lSbnuubL
         pE8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ag1lgpym;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id w8si151436wmk.1.2019.09.17.00.32.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 00:32:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id v8so1967043wrt.2
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 00:32:34 -0700 (PDT)
X-Received: by 2002:adf:e612:: with SMTP id p18mr1651886wrm.218.1568705554444;
        Tue, 17 Sep 2019 00:32:34 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id x129sm929561wmg.8.2019.09.17.00.32.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Sep 2019 00:32:33 -0700 (PDT)
Date: Tue, 17 Sep 2019 00:32:32 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Tom Lendacky <thomas.lendacky@amd.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	"David S. Miller" <davem@davemloft.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	David Bolvansky <david.bolvansky@gmail.com>, netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: -Wsizeof-array-div warnings in ethernet drivers
Message-ID: <20190917073232.GA14291@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ag1lgpym;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi all,

Clang recently added a new diagnostic in r371605, -Wsizeof-array-div,
that tries to warn when sizeof(X) / sizeof(Y) does not compute the
number of elements in an array X (i.e., sizeof(Y) is wrong). See that
commit for more details:

https://github.com/llvm/llvm-project/commit/3240ad4ced0d3223149b72a4fc2a4d9b67589427

Some ethernet drivers have an instance of this warning due to receive
side scaling support:


../drivers/net/ethernet/amd/xgbe/xgbe-dev.c:361:49: warning: expression
does not compute the number of elements in this array; element type is
'u8' (aka 'unsigned char'), not 'u32' (aka 'unsigned int')
[-Wsizeof-array-div]
        unsigned int key_regs = sizeof(pdata->rss_key) / sizeof(u32);
                                       ~~~~~~~~~~~~~~  ^
../drivers/net/ethernet/amd/xgbe/xgbe-dev.c:361:49: note: place
parentheses around the 'sizeof(u32)' expression to silence this warning


../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c:537:36: warning:
expression does not compute the number of elements in this array;
element type is 'u8' (aka 'unsigned char'), not 'u32' (aka 'unsigned
int') [-Wsizeof-array-div]
        for (i = 0; i < (sizeof(cfg->key) / sizeof(u32)); i++) {
                                ~~~~~~~~  ^
../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c:537:36: note:
place parentheses around the 'sizeof(u32)' expression to silence this
warning


../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c:2329:49: warning:
expression does not compute the number of elements in this array;
element type is 'u8' (aka 'unsigned char'), not 'u32' (aka 'unsigned
int') [-Wsizeof-array-div]
        unsigned int key_regs = sizeof(pdata->rss_key) / sizeof(u32);
                                       ~~~~~~~~~~~~~~  ^
../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c:2329:49: note: place
parentheses around the 'sizeof(u32)' expression to silence this warning


What is the reasoning behind having the key being an array of u8s but
seemlingly converting it into an array of u32s? It's not immediately
apparent from reading over the code but I am not familiar with it so I
might be making a mistake. I assume this is intentional? If so, the
warning can be silenced and we'll send patches to do so but we want to
make sure we aren't actually papering over a mistake.

Cheers!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190917073232.GA14291%40archlinux-threadripper.
