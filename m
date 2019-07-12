Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB3HAUPUQKGQEPR3Z4NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A13E3675FB
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 22:41:17 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id b7sf2413750vsr.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 13:41:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562964076; cv=pass;
        d=google.com; s=arc-20160816;
        b=lN/V92c2QXoT9jtMqpd+thwyjyDcL6I+fAOQRVb1aqPBYQ0ytbrgNf1mlIgDNtxUkt
         fuT1tiA/sL0vT9VoVmAQ3lOLdYYxiK7hd7nOr+EC2AR6e+9KTGwTSSNzxEXxiB1MUZZm
         F6V76nU+Ivfe43xegSe235FyMJPanW4DIhYvRrQbaQ5BLnkGdefoO7H04pCWYBt+5nGZ
         +h/EXPMk6h7BA5z8ey+0u/83UGqTWCkdzuwKoC3IXjfse+gqnQ6Cnedph0fWc6vSHiCF
         AUdTXouzktJS0048yUXIu9HLtw2Znnbu/TS5M4iKsrRTRZ9LOAyXReGnBtiUE02ADTgN
         plWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=6HcV5LS8GLYnCfwBWRMO1849/UMI5F6RRIQbIw6oA30=;
        b=CrBnGjCvMOHl1kLW0dW3tyh+gQgfVSWXsSAqCAkuxqUtR9iz8W5EuRs0IAAxqshBCx
         xNTtmbChlCHGa0xsa/hL8nII4TyylpZl/H2T9f+3RJWu4J1mwLfWVkSg6h5ectganam2
         PN9CJoFewCm9UK1Nx1AD+uHozxXZNXHsJM9XwFva5/x2l8TqUC+wk9i5VQFCXN3dYXQr
         yP+uuOa7LYRp8BCjJ0zFu6Bg0MdyGsbc5r3KYP/Vv6kjZg1kufzQM3CmxLzmAbId92s9
         6F0f4Dg0LxhdzmhhCMn6eAVaYhIUuxrFi2tZopFNxN3gi8s+yKhtMGPWB9JWBPp1selQ
         ZU9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6HcV5LS8GLYnCfwBWRMO1849/UMI5F6RRIQbIw6oA30=;
        b=SyxCh1ZeBSn6q70yhsZ0EvHm7GQAHe8/7RMoQ27OdJ+GQIH897XBX+z+CaNrbIBQHn
         A6xpQdd2+LkXK5xjeBZoUoqiZF4QCGvGHcgebEDb+bLdWRAKJxrm5fIFvlEA+n2oLoZp
         5gS3ww6ScZrbCsI2xKoSLjISsJWhXSk/b0Ru1dTtXMLbWYavqHgCy3NNGMaK+wL3DD3k
         ZVt77RhNy9adlNviY1zT7wX55p/ZiyYCa04Y+ERUlT2BVumhFcu0w9yZRANBHyN8Ko1U
         iPfi6fdvk1QU6OKTJ5Ni8bgIMYE2095rGpLtAUGWwfSwvnFK47qhh0T9+7DebGYtT7xJ
         QWdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6HcV5LS8GLYnCfwBWRMO1849/UMI5F6RRIQbIw6oA30=;
        b=t/XQ30o8KloSgunzpIQ+jf5K6jBPyiGwa6OWLNu1LQFqYkGT5a3hc6GMe/xCjpuveV
         irXIB6LAF2olUNlb29fG+qujya54ZRLILDwBg2EQsgvQ7hn3unhf2nVqYOc9XVpB9NZE
         haGe6wnD/RmOU+n7Q9ZCwp4tugwzf/ZkmNsnqRVuJh949x6I9MP50dQWnWMIVrp+lGMw
         +EUwYc/lvkm9ReT9pu7BTUBUXlJfW8DHl541JAT1dj/4ia/4xrG1SKorx06B/VpnZEv7
         YUmYo276bKlnWY8RngT5Hf1aHDvF3XgbrX3CgiHarEVEO0sRewoeUSP8Auv7eatRsx0a
         LEaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUJ0PJvVo8Y+ud+UrAfV12OBtVxTb3sSIFJhWijjMtyl+ORZN97
	udmUodnjpHo0aRBU9NM6uFg=
X-Google-Smtp-Source: APXvYqz+uAqI3e0sHMzRfXA02kk4T4IW+hIu+wrjDPvvv07k6BYRUGkc0u3D3keP3A/XiakY2vfnWA==
X-Received: by 2002:ab0:70b1:: with SMTP id q17mr7275296ual.100.1562964076538;
        Fri, 12 Jul 2019 13:41:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:35e3:: with SMTP id u32ls900857uad.8.gmail; Fri, 12 Jul
 2019 13:41:16 -0700 (PDT)
X-Received: by 2002:ab0:2444:: with SMTP id g4mr10129982uan.116.1562964076169;
        Fri, 12 Jul 2019 13:41:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562964076; cv=none;
        d=google.com; s=arc-20160816;
        b=GtycaUJ5WXopBeAdIskEM0KHiOpld152iQDQBMTEeKqbpLM7wuJpTgu+CTMaxx6I3G
         ZBZ3B2N86UwM2CB4a+qhBEwufCB3+n42ijFYTH3aCFJ+RsGi1k4SI4zNogPkNWLJnmls
         PPzoI7QjS+iP0xbQrE2g0hDiZ3p5S2XEb3BMWQz6bUlsyTy7gbUgecfkfRNLV1ZjustN
         ZCUZkxicw4F9RF/5K9g/8ne+/UJQ7Co/fH27vFYJ4Aei8jpLOouGM3Y9TQYoLc7dOHad
         SYByhArWhK5WYaw/lG+QX/gT7oXgmTyftyhYI3aFNtni7EJBNLM6OXmESXTs/vUk5UHR
         0i8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=XZ6pCCksBvzF32wfLcjXw5BujFEKtwTChIfct1iKQmw=;
        b=zRkQ2wF3DlugP2eSNY9EWkarnQAAH0MNQAnECb/BfI7KuH07GoBmCU+w6jUiHHjqHy
         v4C8swYbjokPQh4vtRBXpBKWrDAY5fZf/HHC4CmnFeb3zCuPIvRJ9rWCKw6z7tdaR7qh
         tPxgVajehefCH/55jIPgKqrngzLde8oVKv3EWrlHZKVMU8LmaiT6jXjl2B/n7K6DOR3T
         8z2NH2jqTPqxeY5BzRc9mpKbaUegK4nPCHKNMf8i3xkWfsnlKMmnPYvo9JgR8yVxNMVa
         DaZvHTxHc8chzSdFVQQof6AEq/NWEVcI29J+Aaj23ql5bZ9ZsvgnoqgBqWM5UTeITloL
         IyYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com. [209.85.160.194])
        by gmr-mx.google.com with ESMTPS id e126si554723vkg.5.2019.07.12.13.41.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 13:41:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) client-ip=209.85.160.194;
Received: by mail-qt1-f194.google.com with SMTP id y26so9532222qto.4
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 13:41:16 -0700 (PDT)
X-Received: by 2002:a0c:ba2c:: with SMTP id w44mr8416126qvf.62.1562964075762;
 Fri, 12 Jul 2019 13:41:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2beBPP+KX4zTfSfFPwo+7ksWZLqZzpP9BJ80iPecg3zA@mail.gmail.com>
 <20190711172621.a7ab7jorolicid3z@treble> <CAK8P3a0iOMpMW-dXUY6g75HGC4mUe3P3=gv447WZOW8jmw2Vgg@mail.gmail.com>
 <CAG48ez3ipuPHLxbqqc50=Kn4QuoNczkd7VqEoLPVd3WWLk2s+Q@mail.gmail.com>
 <CAK8P3a2=SJQp7Jvyf+BX-7XsUr8bh6eBMo6ue2m8FW4aYf=PPw@mail.gmail.com>
 <CAK8P3a1_8kjzamn6_joBbZTO8NeGn0E3O+MZ+bcOQ0HkkRHXRQ@mail.gmail.com>
 <20190712135755.7qa4wxw3bfmwn5rp@treble> <CAK8P3a13QFN59o9xOMce6K64jGnz+Cf=o3R_ORMo7j-65F5i8A@mail.gmail.com>
 <20190712142928.gmt6gibikdjmkppm@treble> <CAKwvOdnOpgo9rEctZZR9Y9rEc60FCthbPtp62UsdMtkGDF5nUg@mail.gmail.com>
In-Reply-To: <CAKwvOdnOpgo9rEctZZR9Y9rEc60FCthbPtp62UsdMtkGDF5nUg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 12 Jul 2019 22:40:59 +0200
Message-ID: <CAK8P3a0AGpvAOzSfER7iiaz=aLVMbxiVorTsh__yT4xxBOHSyw@mail.gmail.com>
Subject: Re: objtool crashes on clang output (drivers/hwmon/pmbus/adm1275.o)
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Josh Poimboeuf <jpoimboe@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Fri, Jul 12, 2019 at 6:59 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> > The issue still needs to get fixed in clang regardless.  There are other
> > noreturn functions in the kernel and this problem could easily pop back
> > up.
>
> Sure, thanks for the report.  Arnd, can you help us get a more minimal
> test case to understand the issue better?

I reduced it to this testcase:

int a, b;
void __reiserfs_panic(int, ...) __attribute__((noreturn));
void balance_internal() {
  if (a)
    __reiserfs_panic(0, "", __func__, "", 2, __func__, a);
  if (b)
    __reiserfs_panic(0, "", __func__, "", 5, __func__, a, 0);
}

https://godbolt.org/z/Byfvmx

$ clang-8 -mstack-alignment=8 -S ibalance.c -Wall -Os   -c
$ objtool orc generate ibalance.o
ibalance.o: warning: objtool: balance_internal()+0x61: stack state
mismatch: cfa1=7+8 cfa2=7+16

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0AGpvAOzSfER7iiaz%3DaLVMbxiVorTsh__yT4xxBOHSyw%40mail.gmail.com.
