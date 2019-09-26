Return-Path: <clang-built-linux+bncBDYJPJO25UGBBT7CWPWAKGQECWE6HFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 26744BF759
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Sep 2019 19:11:45 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id s14sf3001038qtn.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Sep 2019 10:11:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569517904; cv=pass;
        d=google.com; s=arc-20160816;
        b=qVYuj940iQAWEHQPZc5En5u4mRfmqhdea2BoACoAmQr3Em5NS8oae9GcwwxflmtEhO
         7molG5yVHVJDdTEkb1yeh0r8Ttpecaqb7jJahc9XhnTfpxh3im57NY5o4rYQuKjk6HBl
         q6xbZ1OfkZJLH5PypNnJDlcJ0RitA4tRL1YznP6d5DJ9ikLX/uMLWCGtSrQ/SYkpCqCd
         B5md9K7arkuOkLypH3yZS5N41dxzsKKFnzn8CwLo5tMNxC5Aq4j5dathI5oriiSWDpIW
         D6CRCkMXDlul1gvPVoZis6+LMklBD1YWICY+WvPG8vGH5edDkcj0Bco5Ajx0P00DYrR3
         JWuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/SuTUk0tb8yUatomUEGCPVcuzSpEzpRvOGDSCS+CS18=;
        b=MXG+IDEO6mdoZ4wLB1d0Gr0vRWheoqv6kq9ie2AB126iSKa66oQCraB4qARMmFkqgH
         jUOgIjMNmxgrpf4jOH+2MXFaEfrdI0vSRM75wcZAEw0jyOquGed7DYpaxRgHmZ6xT60L
         FTZZa2tJooHI6wwkcG/NRZMP486kmUDUd3j1erG7ZTi4lNKSIwWoTAaHgkoIrDvJolso
         ommaUGHNPAe68dTIsZzvauWCO6p3rF9qUTKUtCA+8Iw+v/7RtN1MSMVl02rOm4ZoU+VN
         0+fIM8cQmJnwSumyaNsKysg77YTNQAhGOqAeAnyZ5gKX6WFhfPzuJb56PV4D1fhj51cD
         gvig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q32BEwoY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/SuTUk0tb8yUatomUEGCPVcuzSpEzpRvOGDSCS+CS18=;
        b=XDaYArgW+GUL88QohNedP5Hbtrwl9gt0xhE7v1X227XLy5WgkUkIIPFRVDj3iw753f
         2tvVrCQe2ZT4hERLPIKNxsBXl8U1cUrXBhz46RHtQkSov3H5MW9Ml4A+osAiAyEWKFit
         nkZNEOesU0kDvjmi5bhm0BU3LUVNjq/x4gkw+dDsEsHXw7eyBdJNOFee1oesX7HZj6rR
         LN2UjXHfuZSDWQJXNEQ4mRRXRvR+VZEgOx3+t9NJgT3VFJrF4r8OEM8psuDCRI+ReLim
         fQdU91NZIXCHF3M8tPJe5zkT8VSo1YErB3JvQEn9AuIhZ0JuGzqrWvrfm2ij/S2/GjTH
         0M1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/SuTUk0tb8yUatomUEGCPVcuzSpEzpRvOGDSCS+CS18=;
        b=rjyjfordHrb9Aylq/Y0bcardY468BhQ7lSdjMBC4Qj8b5aC+yVf5Wpt+fSanJbCc3N
         z3T8tB87ossWkxD77fdWstiUk7ra+dwp9ZST7ak7S9epiTjnui/vknR6/8vjHzK2Bk8b
         rh21yNoawz0EUC+yGqwd4BtxFJJ0B4JeeY4ogzzuY3/Xnmfup0GmtONUyH0LnidiC2LE
         fWe3PpfkAwEEQ4kTNwexiO226RawiRGtAk3IXnYw9ZDPtPd5xy5PGzqtr+z8zEUPGX5M
         aWdBO3tmDwxBKcc94L4fBQ3m5Nmb3UJRVS1LF2lkSt3aHgPCLNnb3wcA/hWevmMdwFJ8
         zhag==
X-Gm-Message-State: APjAAAVF5iW3PM1jZamYD4Nnk2ZCUQH2WRoPL3A04wvRy8KvHTrST/h0
	pakIkZKy0hExQT2brjd4ZT4=
X-Google-Smtp-Source: APXvYqwK25+F7CVuWZ09uKkc6MhnYmgwz6+hRJyPviTKG7eQkYXaqSBG0jjJI8KP/hEscdwn74RP5g==
X-Received: by 2002:ac8:2d2c:: with SMTP id n41mr4971629qta.335.1569517903901;
        Thu, 26 Sep 2019 10:11:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:d246:: with SMTP id o6ls576430qvh.9.gmail; Thu, 26 Sep
 2019 10:11:43 -0700 (PDT)
X-Received: by 2002:a0c:c15d:: with SMTP id i29mr3606351qvh.5.1569517903539;
        Thu, 26 Sep 2019 10:11:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569517903; cv=none;
        d=google.com; s=arc-20160816;
        b=d50q3jPyS2QtIKeVk3HohQ3RWsNUfVK3DzBMe5dAz5V9wrDcFr2r0PvaTz+2XA45Ko
         bC69//ZJNtzt2oVDFFtlvSIV7ztPslI6iTuSLGg8MjGeIeQh7fRsopYX/oH2XUi4qvft
         3tMgpJTkGqzLX7mF3y0mBbjFKRxBeH/SAQXCOcUUj9pe8Ehc2er5hsLdUw+lUh68+z4q
         2Q6/uSuwHAp3pZGuIQ1SYlp9N7vtG5TcLeExcgOVs0iwY5zosMRYxm+HzsUJjhO3sMiW
         nxKon+EUJTuZLj5n7Qx1jZcCd4C+JYJJEqYLdklB8vK1AVuj5bUCkz3s2nGEUXh5vBiq
         zdWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=s+psbFW/tAjif9PT+xMmnUDI4ZG7/fb7bHm+EDvR+Is=;
        b=oA7t3Zd2c8vRD5xbtFx6nhL3dYO2i+PEn6YXyI/D2cxVVYFR0bVDQW87zzDTsM+F++
         +tgXBHtf9elDH6huVgqHVYhManLu/MrXmAYFgqkX4XtzDSsV6zVNL43GnibsNcfcrAm+
         U0LkA3SdN6DTp/DNq621YfdcrH+k4RKg9HTQbGSxs5u3U8/gdL2mdj+eGsFN8Czew9C/
         3nFZEX14n0Shr6J/asJ9bvbvL0iEqDE8F61wnojajlkZOMC5XFJxTeOxz6R/cHa44DN3
         Kg6VSLZdVLmGeMpF6meJrMTbRbFDkFkOpAYAlFUJtLcztqUUTrxWyY2fcoaquBsPwTC1
         1dBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q32BEwoY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id t53si205463qte.2.2019.09.26.10.11.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Sep 2019 10:11:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id e5so1314967pls.9
        for <clang-built-linux@googlegroups.com>; Thu, 26 Sep 2019 10:11:43 -0700 (PDT)
X-Received: by 2002:a17:902:bb87:: with SMTP id m7mr4950075pls.179.1569517902158;
 Thu, 26 Sep 2019 10:11:42 -0700 (PDT)
MIME-Version: 1.0
References: <201909261145.i92LRqMI%lkp@intel.com>
In-Reply-To: <201909261145.i92LRqMI%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 26 Sep 2019 10:11:30 -0700
Message-ID: <CAKwvOdmGbCyt-4a=6bNtzFAX21384qZLWcxQcSzH-ZD5NHbAqA@mail.gmail.com>
Subject: Re: [linux-review:UPDATE-20190926-102833/Navid-Emamdoost/net-flow_offload-fix-memory-leak-in-nfp_abm_u32_knode_replace/20190926-025114
 1/1] drivers/net/ethernet/netronome/nfp/abm/cls.c:179:6: warning: variable
 'err' is used uninitialized whenever 'if' condition is true
To: kbuild test robot <lkp@intel.com>, navid.emamdoost@gmail.com
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Q32BEwoY;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

Hi Navid,
The below report from 0day bot looks legit. Can you please take a look?

On Wed, Sep 25, 2019 at 8:37 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> TO: Navid Emamdoost <navid.emamdoost@gmail.com>
> CC: 0day robot <lkp@intel.com>
>
> tree:   https://github.com/0day-ci/linux/commits/UPDATE-20190926-102833/Navid-Emamdoost/net-flow_offload-fix-memory-leak-in-nfp_abm_u32_knode_replace/20190926-025114
> head:   ef137ff4f0b2604a086ecde7ffdd90ca905bc754
> commit: ef137ff4f0b2604a086ecde7ffdd90ca905bc754 [1/1] net: flow_offload: fix memory leak in nfp_abm_u32_knode_replace
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 6023cf223446e3f7038d4b867635f47b2d26e194)
> reproduce:
>         git checkout ef137ff4f0b2604a086ecde7ffdd90ca905bc754
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>            ^
>    include/linux/jhash.h:95:2: note: insert '__attribute__((fallthrough));' to silence this warning
>            case 6:  b += (u32)k[5]<<8;     /* fall through */
>            ^
>            __attribute__((fallthrough));
>    include/linux/jhash.h:95:2: note: insert 'break;' to avoid fall-through
>            case 6:  b += (u32)k[5]<<8;     /* fall through */
>            ^
>            break;
>    include/linux/jhash.h:96:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
>            case 5:  b += k[4];             /* fall through */
>            ^
>    include/linux/jhash.h:96:2: note: insert '__attribute__((fallthrough));' to silence this warning
>            case 5:  b += k[4];             /* fall through */
>            ^
>            __attribute__((fallthrough));
>    include/linux/jhash.h:96:2: note: insert 'break;' to avoid fall-through
>            case 5:  b += k[4];             /* fall through */
>            ^
>            break;
>    include/linux/jhash.h:97:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
>            case 4:  a += (u32)k[3]<<24;    /* fall through */
>            ^
>    include/linux/jhash.h:97:2: note: insert '__attribute__((fallthrough));' to silence this warning
>            case 4:  a += (u32)k[3]<<24;    /* fall through */
>            ^
>            __attribute__((fallthrough));
>    include/linux/jhash.h:97:2: note: insert 'break;' to avoid fall-through
>            case 4:  a += (u32)k[3]<<24;    /* fall through */
>            ^
>            break;
>    include/linux/jhash.h:98:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
>            case 3:  a += (u32)k[2]<<16;    /* fall through */
>            ^
>    include/linux/jhash.h:98:2: note: insert '__attribute__((fallthrough));' to silence this warning
>            case 3:  a += (u32)k[2]<<16;    /* fall through */
>            ^
>            __attribute__((fallthrough));
>    include/linux/jhash.h:98:2: note: insert 'break;' to avoid fall-through
>            case 3:  a += (u32)k[2]<<16;    /* fall through */
>            ^
>            break;
>    include/linux/jhash.h:99:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
>            case 2:  a += (u32)k[1]<<8;     /* fall through */
>            ^
>    include/linux/jhash.h:99:2: note: insert '__attribute__((fallthrough));' to silence this warning
>            case 2:  a += (u32)k[1]<<8;     /* fall through */
>            ^
>            __attribute__((fallthrough));
>    include/linux/jhash.h:99:2: note: insert 'break;' to avoid fall-through
>            case 2:  a += (u32)k[1]<<8;     /* fall through */
>            ^
>            break;
>    include/linux/jhash.h:100:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
>            case 1:  a += k[0];
>            ^
>    include/linux/jhash.h:100:2: note: insert '__attribute__((fallthrough));' to silence this warning
>            case 1:  a += k[0];
>            ^
>            __attribute__((fallthrough));
>    include/linux/jhash.h:100:2: note: insert 'break;' to avoid fall-through
>            case 1:  a += k[0];
>            ^
>            break;
>    include/linux/jhash.h:102:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
>            case 0: /* Nothing left to add */
>            ^
>    include/linux/jhash.h:102:2: note: insert 'break;' to avoid fall-through
>            case 0: /* Nothing left to add */
>            ^
>            break;
>    include/linux/jhash.h:136:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
>            case 2: b += k[1];      /* fall through */
>            ^
>    include/linux/jhash.h:136:2: note: insert '__attribute__((fallthrough));' to silence this warning
>            case 2: b += k[1];      /* fall through */
>            ^
>            __attribute__((fallthrough));
>    include/linux/jhash.h:136:2: note: insert 'break;' to avoid fall-through
>            case 2: b += k[1];      /* fall through */
>            ^
>            break;
>    include/linux/jhash.h:137:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
>            case 1: a += k[0];
>            ^
>    include/linux/jhash.h:137:2: note: insert '__attribute__((fallthrough));' to silence this warning
>            case 1: a += k[0];
>            ^
>            __attribute__((fallthrough));
>    include/linux/jhash.h:137:2: note: insert 'break;' to avoid fall-through
>            case 1: a += k[0];
>            ^
>            break;
>    include/linux/jhash.h:139:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
>            case 0: /* Nothing left to add */
>            ^
>    include/linux/jhash.h:139:2: note: insert 'break;' to avoid fall-through
>            case 0: /* Nothing left to add */
>            ^
>            break;
> >> drivers/net/ethernet/netronome/nfp/abm/cls.c:179:6: warning: variable 'err' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>            if (!nfp_abm_u32_check_knode(alink->abm, knode, proto, extack))
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/ethernet/netronome/nfp/abm/cls.c:228:9: note: uninitialized use occurs here
>            return err;
>                   ^~~
>    drivers/net/ethernet/netronome/nfp/abm/cls.c:179:2: note: remove the 'if' if its condition is always false
>            if (!nfp_abm_u32_check_knode(alink->abm, knode, proto, extack))
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/ethernet/netronome/nfp/abm/cls.c:177:9: note: initialize the variable 'err' to silence this warning
>            int err;
>                   ^
>                    = 0
>    37 warnings generated.
>
> vim +179 drivers/net/ethernet/netronome/nfp/abm/cls.c
>
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  168
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  169  static int
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  170  nfp_abm_u32_knode_replace(struct nfp_abm_link *alink,
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  171                            struct tc_cls_u32_knode *knode,
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  172                            __be16 proto, struct netlink_ext_ack *extack)
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  173  {
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  174          struct nfp_abm_u32_match *match = NULL, *iter;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  175          unsigned int tos_off;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  176          u8 mask, val;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  177          int err;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  178
> 174ab544e3bc0b Jakub Kicinski  2018-11-19 @179          if (!nfp_abm_u32_check_knode(alink->abm, knode, proto, extack))
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  180                  goto err_delete;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  181
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  182          tos_off = proto == htons(ETH_P_IP) ? 16 : 20;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  183
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  184          /* Extract the DSCP Class Selector bits */
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  185          val = be32_to_cpu(knode->sel->keys[0].val) >> tos_off & 0xff;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  186          mask = be32_to_cpu(knode->sel->keys[0].mask) >> tos_off & 0xff;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  187
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  188          /* Check if there is no conflicting mapping and find match by handle */
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  189          list_for_each_entry(iter, &alink->dscp_map, list) {
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  190                  u32 cmask;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  191
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  192                  if (iter->handle == knode->handle) {
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  193                          match = iter;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  194                          continue;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  195                  }
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  196
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  197                  cmask = iter->mask & mask;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  198                  if ((iter->val & cmask) == (val & cmask) &&
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  199                      iter->band != knode->res->classid) {
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  200                          NL_SET_ERR_MSG_MOD(extack, "conflict with already offloaded filter");
> ef137ff4f0b260 Navid Emamdoost 2019-09-25  201                          err = -EOPNOTSUPP;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  202                          goto err_delete;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  203                  }
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  204          }
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  205
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  206          if (!match) {
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  207                  match = kzalloc(sizeof(*match), GFP_KERNEL);
> ef137ff4f0b260 Navid Emamdoost 2019-09-25  208                  if (!match) {
> ef137ff4f0b260 Navid Emamdoost 2019-09-25  209                          err = -ENOMEM;
> ef137ff4f0b260 Navid Emamdoost 2019-09-25  210                          goto err_delete;
> ef137ff4f0b260 Navid Emamdoost 2019-09-25  211                  }
> ef137ff4f0b260 Navid Emamdoost 2019-09-25  212
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  213                  list_add(&match->list, &alink->dscp_map);
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  214          }
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  215          match->handle = knode->handle;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  216          match->band = knode->res->classid;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  217          match->mask = mask;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  218          match->val = val;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  219
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  220          err = nfp_abm_update_band_map(alink);
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  221          if (err)
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  222                  goto err_delete;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  223
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  224          return 0;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  225
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  226  err_delete:
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  227          nfp_abm_u32_knode_delete(alink, knode);
> ef137ff4f0b260 Navid Emamdoost 2019-09-25  228          return err;
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  229  }
> 174ab544e3bc0b Jakub Kicinski  2018-11-19  230
>
> :::::: The code at line 179 was first introduced by commit
> :::::: 174ab544e3bc0b0c944b8e642618203dd0c2ecdf nfp: abm: add cls_u32 offload for simple band classification
>
> :::::: TO: Jakub Kicinski <jakub.kicinski@netronome.com>
> :::::: CC: David S. Miller <davem@davemloft.net>
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmGbCyt-4a%3D6bNtzFAX21384qZLWcxQcSzH-ZD5NHbAqA%40mail.gmail.com.
