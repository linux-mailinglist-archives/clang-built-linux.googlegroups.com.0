Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAGDUKDQMGQEEMLOYKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1253C297B
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Jul 2021 21:20:34 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id d28-20020a634f1c0000b02902238495b6a7sf8038099pgb.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Jul 2021 12:20:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625858433; cv=pass;
        d=google.com; s=arc-20160816;
        b=LpOA9K5CkvR+VYAUIjBW8u1rvq4QkRfCBvPBT1k3IPgk1OniVj5DxYH2qEghISj6dB
         YrNXlsY2OrxZIgXBVwZC19GwSvUZKiOOeHMvbcHEb0dOQ7DZFl+771Arl0g+6rDL2VaI
         u0gJTeIdnh3I48cgYf77GGI0JEND7E97n71PzbrhM52P0VH60EZKPsLYIhjIGhc+qtA4
         rSd8FLjYrgX1g6E7AbnY6Jc1L2alKJtVc5jk0tpJXxZpGN9gdEdWylTMkNskRmbAVsu3
         ZWn3xXZRqoTSPPtgj1gIMKJF6/dffX0d4CgMuBCrj2lq4mrOxJJGAYUtnhzYs3ZvShk+
         wR9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:subject:from:cc:to:sender:dkim-signature;
        bh=mXRiyrUjT6LaoEK5fMP00VcfQ4+2uoNUWxlYALozHf0=;
        b=RnYBfabicJzQXYiMwf8TAGTa0FlklOx81kYLZwx7fpYa+slldJIzKKs8OE1VG6D8uf
         4FXybBZP4XYN7jrBFhk/pBbjIbUpiZPmyRNgYBC4vpXeuU+s8CLfblPS3ukz0ZmMIFCD
         +DTQJwHgxTY50YqZOFb15A2sGBiXPlv/E/Ctu9rqmfaYKQ3HSi9uzGII8tJMLNeFu3bj
         5o8zlJhkXpSIo21jHnHf0gzN7lqHufUTQaF0HFN3BBF05BgjHRJJr0c26Grje6li1o0K
         ZYAom9SMudmEkQmCs9V2eFv27p3c2q9n1dDp4znpEFzRyM0DvW2wfin/MuWLmiFIvlc4
         1cdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Cx73Wj6e;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mXRiyrUjT6LaoEK5fMP00VcfQ4+2uoNUWxlYALozHf0=;
        b=gLDuC9bTzoi85ZyUTqGuWucBUmrctTHCTq7CZoPFGedO30Fn0yiKWpVhNxjzfkv3Jr
         vbk01iUxwHqEC0w2ymNj/Ix+lrAcPHaMGo7yX03Fe+KRDdw+jsd3oT28vonRlSqQMQ2j
         5ce7ErpDCU5kMgBteX04M51qrNdvfB/wiQCz4paNTiQv4iowm2X34lQc+rO+ZuiXMWLH
         JyFtamZfo0ICXiBl0TnalbukusUVm5yMqk7ASwmf8NYXLkGIp8oP64qW6nzu1amV68Hg
         9XIGzkI5WuhRlMSt0TO4G7SYIeTGJrv5s6cgZPZbOGbp6TOd+xTnNOxSmpRoM8lfjGhh
         Kmmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:from:subject:message-id:date
         :user-agent:mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mXRiyrUjT6LaoEK5fMP00VcfQ4+2uoNUWxlYALozHf0=;
        b=QI/T7wEconMojKY/itH9F0vPZ7VtQ46LIJHFzHAP8sJ3Q7VlBU2gLgWofPwnmrJTB6
         EH5wEn2gu+zm/smr/6vs8PAqnCqPsqG6R3FYUSgtevz0oosweNfHPEcFX+676CITjsJ1
         qcWvqyZAm5hKRec/PUM1iG0PRXLBkPFFhHH1B1yQ6WYvR9t0CtyrvC3iAyf/2DG2TMPl
         fEe5uiPXILPcO5ed2KNy5OOpDSW5J52DDJI5U1XJ1FYOiEb0eL6e5AdKWR/t2f1WnrYT
         UYXe17NZxm0TKv2u/x8XlOLZ19GkCqhowDzzFVN9T/JzhmZ8iYtmpW9JVRg9WQgGGRk9
         4mpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53078xunP26fJCowck4CVx2yc0DcT6xfIw5CCw7fEEWVA6VOwC7e
	8jByEcSjq9jaKTSD+KAEosU=
X-Google-Smtp-Source: ABdhPJz2PzmOnpGCLnCk1k2p1k6t6hpI80++sRTGlegmmW2v9G+E4JF4tYam4tmAxAHSa0ARd8JnjQ==
X-Received: by 2002:a62:481:0:b029:31d:f010:26b2 with SMTP id 123-20020a6204810000b029031df01026b2mr31027057pfe.2.1625858432980;
        Fri, 09 Jul 2021 12:20:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:24d5:: with SMTP id d21ls3488283pfv.1.gmail; Fri,
 09 Jul 2021 12:20:32 -0700 (PDT)
X-Received: by 2002:a63:f712:: with SMTP id x18mr27776870pgh.389.1625858432442;
        Fri, 09 Jul 2021 12:20:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625858432; cv=none;
        d=google.com; s=arc-20160816;
        b=PoCvu+nGJGJ2M6jcRkAYRKONMl53ctdKS23toFGTQnwws/AjUxCShzePDNsGb5s6Fc
         Vsv5/DtLiiRR92/Mrct/5zNwvdKxWqX5gnfir1/CobGDwCmaj4bd8W+8Ef3ZKUSdVPf7
         rL0+HZXlxasuDYT0iVEEsiHrhK3s9dV5Lub7ELN8PbbRzcbjDqmbH6UOOVnSt43on/Zq
         k0nr9GCUe9Mk4cH6T4hmMPyTcg9QZA4uQI1wa59ewIhcFSzveQqggdwfD+lofE+qQPLP
         u4YRyXHvFhQt2fAr5OrTu3crsRzjB3hyTHpV1dnIT/oreRr/5Tfcjmu1ykurS9oxs3QH
         5+WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:subject:from:cc:to:dkim-signature;
        bh=s8x4T5X3egwMINcpoVgnwLGrNaX70mhhtyha5MuxwmI=;
        b=Gs1fhoGBP0Sg7zqlpqw1m657aDt846r5KHipy9zGl125jokFkuohJZQMDDCwwL1Bkm
         lEKcaGLG1u2Wl3uVSE9k65g33WJn0EEQSEg9rGkPuiFq13zxGNLrxOtujuJVd7euptjq
         8xXzSbu3lwd/q4gFTH+zRWYt3Iot7oD8tUVOP/SrI2/47cYcFgFvHlmlkbceVxtWZ3Uu
         NBwb9FG0sTPDGePB6tnViPvJpHWluN0x9plYthY+Af0Na4RM+rOM4FxEF8i7koRvoQy5
         TvfEXEb/5DtTOg3Ltuc7DpSY0an+zqaQUrza1eNbKWMONnfXYuHVwhKMWIglCF9Gkqgs
         IpSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Cx73Wj6e;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n2si1648701pjp.2.2021.07.09.12.20.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 12:20:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DD58E613C3;
	Fri,  9 Jul 2021 19:20:31 +0000 (UTC)
To: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux@googlegroups.com
From: Nathan Chancellor <nathan@kernel.org>
Subject: Testing more ARCH=arm configs
Message-ID: <2010e5ae-011b-1049-3b6d-c7f269eb08b3@kernel.org>
Date: Fri, 9 Jul 2021 12:20:31 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Cx73Wj6e;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Arnd,

Nick brought up testing more configurations for ARCH=arm in our CI, I 
was curious what sort of configurations you think are worth testing in 
addition to the ones that we have already.

https://github.com/ClangBuiltLinux/continuous-integration2/issues/166

https://github.com/ClangBuiltLinux/continuous-integration2/blob/d659897d1700894d67feb64fe28e298da399a287/generator.yml#L67-L73

We would not necessarily have to run these that often but it might be 
nice to catch corner cases as much as possible.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2010e5ae-011b-1049-3b6d-c7f269eb08b3%40kernel.org.
