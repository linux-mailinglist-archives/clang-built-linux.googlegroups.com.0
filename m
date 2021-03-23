Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBWPH42BAMGQEGMAH22A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACEF345ABC
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 10:24:42 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id n2sf482096wmi.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 02:24:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616491482; cv=pass;
        d=google.com; s=arc-20160816;
        b=yqdHqqL2n4AhdJltO8Kn7HqZPKiJA5vPsZD6MffSWAK6YsUS2M0IzNv3UFIxMT7L2K
         T8Elos/hIRpcHKtdQGe0/7Yy6QMjxPPRuX6ydPrATmTikx93rvW8KDweuq5h3Yjt654h
         nwH4qOgfGT2ykANFjG5Z9Oudg0bkltykh84Q1/owJll9oP87Yb8wnZXU/0ePQ0Wl7567
         5xPMKa0QtrZuObJ8UrsryXMsWKWv5daAjuZNPyP7vWdJnGWcuIa8xBTpKj5RcAU8rWpe
         sna0frRFMqO20byOdLi+dFoazYB3mbYFWXaB15+hadB5duD8jLzAZv20SBIGqtmz9XVP
         uwYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=+8yx/2PoyhShvQG5yBWT8R3oSyoI+Uv7ykfwzcGimQU=;
        b=QiAaOAH14C5Z7LlFCbo0fbl0AKQIDuKJk0W79SWVUnlVqJnDvgcdJCdeqtOs+lugbj
         xhCeHtzUAQ7aGHKd18KGTymEDpHfQQCOCOKGjGdNmkXQTvAUdToFIL89+ejkFxI23iof
         uAeNSIUpwZslB0Ee8/9oFw1lccfduhPIOEzH4hV8NufY3gQsoZp078y8vQRaPbxg/FWo
         CF8bNt7Tj/SHDIPvKZtaltdMqsfkrVXP5GphmmYGtAqxnOXE3B1+S+9zHi9gVjuzt5lL
         6ikmK/RCPnbcujtrGqMSV17sd76p7Dzc7dxjYNM3bsNDNXoINzlo9JZ5mkH8vFMsE7sD
         JtjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+8yx/2PoyhShvQG5yBWT8R3oSyoI+Uv7ykfwzcGimQU=;
        b=UtNX5W9vxYghj2FnW5S6RIxKVTpKrANb20NKoU7VeDDXsw+ZoqzrsOCAkwheCYQZIR
         rnIRbZpWv9331aV9ME13oPqGOA+rfXVL08N9nIGDej8tgU/kn4J0T0c3fAYfh++QzHee
         +tnl1D6inp1NbAGhmnA/Gr+JUozhcSN8gFPlo5dyDjwtirSGEn/qv3i4waTVLt53NXNj
         8bdmBDo5CiKF8etzeoARomZws2GKbs+oaOBT8RAwHOhyh+J3GEl5lqfaV/G+Y4qyECta
         nwHvzXMBWblTT2gKs9SerL3HmumA2WxgUwsYB8aMcEwV3hOaX3figKPNKYS6sYXICXlg
         GDjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+8yx/2PoyhShvQG5yBWT8R3oSyoI+Uv7ykfwzcGimQU=;
        b=KTMyJ0Zr5rkWNe5Z0Flj7lHTQQ3B8eDjcQhYIj+32ygAq4vk4vOcEZcGFyOypYHNmE
         S0+ba/RV+Y5i/yP+DrllCpQDgHZhOuSySx4uX6EVgTrzlQCpQNIQd5opELtU2FQNqVj/
         Aw8UT0f1+/grlDUCzJ7BuNCdDVypEGf67eEI6C6yMkzb1GgdDCtwHGQixpa873mWl3ID
         tsUOeIA0c2pGP3nA+LXZyV7if7YZ8CbCOzI9UUaIxKDy/AkthxmrPF5lHMal+CTqz/Bg
         tMzFXc+Waa0OopMvsrfI8SLq+fBQlT+GE8eQ6nV4nJNS9pxMb4JAa0cGups4NCPi829e
         3BkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mjCVpULrHa0FBoi5EhR5TpS8ZbADpEgWJMGOGNYFruBrjCfCB
	tikUrdHfqzlmQ0cvT8jb1i8=
X-Google-Smtp-Source: ABdhPJxRrzwYeuKYgA9LtWm9de+mWY25JAPz9wEJejWL5ianUfj7KS8Jmei90tGt3j2j8NBfq/b37A==
X-Received: by 2002:a1c:df8a:: with SMTP id w132mr2390976wmg.53.1616491481821;
        Tue, 23 Mar 2021 02:24:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6a89:: with SMTP id s9ls1888284wru.2.gmail; Tue, 23 Mar
 2021 02:24:41 -0700 (PDT)
X-Received: by 2002:adf:e54a:: with SMTP id z10mr2909668wrm.87.1616491480896;
        Tue, 23 Mar 2021 02:24:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616491480; cv=none;
        d=google.com; s=arc-20160816;
        b=s/nm1BgbSfucdKf3oktb5smiH16p9FiddHW3O3njKdYYj8qkPO7O3cfU0wKT+WW//h
         M8tDz3v27DJiIIxhj7Nm3Dwf1C239MhxSIP3m4rPnhOcN3y2W2imw61LAxNQw/jUOsd6
         PoMKGINviTcjiKAlhRHmgxlwGlqbK6i3Ica9U15TX68W/FI1dIU5dmwovyTfOaA5QQ1h
         /gUdsSyXlg3K8fYWVCxXmFOfP8/8ozu6zj0GDit4UhHRyYWUA9g5rE8hSK0YpW+YqFqP
         cIhDMeW55EM/iZPJGbVPrmGWnz4QBl3CmHIIrivezUgR2zMTze48ESdttoW5Jm3Ptu64
         Sf3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=q7WwdxUCKcrveN5azSM8n1gnpDd3FguHCZ5aw5Fo3To=;
        b=cRU4KlNX03On/qr3Gs1sMAIeg7aLTI7IYHpizLrkgJxcoZM7Y+SIy6yfq0lGujmL+c
         HMMqwAhi2IRvPKBLX+YO4ma9icEQinz6AzUHsLZpX6/R4ipt2H2IPtIx6Ag3gCPbFaEK
         XsixysSCozBZrwoyUMASM7XoWi9xF5YWyFtIBBRqP4OD2hPGp03iShE7WXX+dnpii7pa
         jZTd1fV2Z3CcmLOrB1Ju180yc+cz+RcTA2ok/U60tvm9jQnXeX9FPYDjAXdcABgCBJIZ
         bww3anxfDHkcrQI+VCGg6/m+hdmJdgPkx/mllzJtxBsCXVTlOgm2sRPbMfdFSznFXm2b
         ZTAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id c9si129165wml.2.2021.03.23.02.24.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 02:24:40 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.75;
Received: from mail-oi1-f182.google.com ([209.85.167.182]) by
 mrelayeu.kundenserver.de (mreue106 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1M8QBa-1lKDQO1VVQ-004VLp for <clang-built-linux@googlegroups.com>; Tue, 23
 Mar 2021 10:24:40 +0100
Received: by mail-oi1-f182.google.com with SMTP id i3so16292705oik.7
        for <clang-built-linux@googlegroups.com>; Tue, 23 Mar 2021 02:24:40 -0700 (PDT)
X-Received: by 2002:a05:6808:3d9:: with SMTP id o25mr2735713oie.4.1616491478766;
 Tue, 23 Mar 2021 02:24:38 -0700 (PDT)
MIME-Version: 1.0
References: <202103231438.XJtqZjmF-lkp@intel.com>
In-Reply-To: <202103231438.XJtqZjmF-lkp@intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 23 Mar 2021 10:24:22 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3wQzLv47RGV-9n0EfTNpwE_E_VgCE57+tYeguWhJXitQ@mail.gmail.com>
Message-ID: <CAK8P3a3wQzLv47RGV-9n0EfTNpwE_E_VgCE57+tYeguWhJXitQ@mail.gmail.com>
Subject: Re: drivers/net/ethernet/chelsio/cxgb4/sge.c:2396:13: warning: stack
 frame size of 1168 bytes in function 'ethofld_xmit'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:BibE0jTqdo3ukQHp9cOaZdN8xU3O0hGF45Y0phvKYiFfm9uyGkn
 VyvKKDQQO1fF3fWkK3tAqkB+OOHT8y32YZZIqUvJqz0eTboAktAyQN0DcsNjIjdFL4g2eZ8
 KdfkJYs0s7BjmYNhE76lROBODj1q0mUzYTk7f3sos08q6S+6lZQJCW9k8dcUWeW/j2DQLhv
 slrI1vB0Qhq55X7lcmxXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bdWE56RVWbs=:iCYz7MoDXUGyd9U903qUVD
 PsO7uZp0JSbqWkfS3XXbKa+gjt7brsueK/ELoWe9TG0YwloGt3nZjEetKncMhYoAeIcTa1PKv
 qu3rQk0psARu+wFR9+js1scei3jD2DtXpwbgdOYtuLttJ+E8V/KZH+09A6ZdPqxNng9SkW97W
 2TqFXiJfEvAaScVADPAPVyiuHxfnrp9DdbctGGWHKbojY4+KZ21W6zCo+/42PW7yfs0iH6qnC
 rFIDBtsETKFtmTMVOwU78cyEDEX9bhse6gGUkyt6Fy4ll+CfkA273Emmx/7rgTiVyQEo3DKjL
 /8rkYqVIq31x5EUMuHi5+HtiRoyD7HkdzIgSUL/Oh5IpVMqb/j8gy+f2w/9y6ZCGqdh2L7cus
 3Jp0L9ftsw84gAZ4OzAwgEcAKEcAMkJoc/l+2p3ow/xN1CnIhyO/Rmbs49G/piq2KnY1F4OR0
 apyVYUcCOgbs+R+Y+6rPOLdt/f1HOreqNlsYoKLZLbeGGD9F+SEHYcZbyzQrtITnUd2sommBy
 YG5LbWlbb5pnVo5MuxT3j6Ckt0AxouwrnedjrGixLHsYTe4K4alakBhtsrGj+kvuQ==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.75 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Tue, Mar 23, 2021 at 7:37 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   84196390620ac0e5070ae36af84c137c6216a7dc
> commit: 97e4910232fa1f81e806aa60c25a0450276d99a2 linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
> date:   9 days ago
> config: mips-randconfig-r023-20210322 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 78a65cd945d006ff02f9d24d9cc20a302ed93b08)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=97e4910232fa1f81e806aa60c25a0450276d99a2
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 97e4910232fa1f81e806aa60c25a0450276d99a2
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    drivers/net/ethernet/chelsio/cxgb4/sge.c:814:28: warning: unused function 'calc_tx_descs' [-Wunused-function]
>    static inline unsigned int calc_tx_descs(const struct sk_buff *skb,
>                               ^
> >> drivers/net/ethernet/chelsio/cxgb4/sge.c:2396:13: warning: stack frame size of 1168 bytes in function 'ethofld_xmit' [-Wframe-larger-than=]
>    static void ethofld_xmit(struct net_device *dev, struct sge_eosw_txq *eosw_txq)
>                ^
>    2 warnings generated.

This looks related to a warning we saw on powerpc. I've tried digging
into it a little
bit more, but all I found is that the use of __builtin_bswap32() changes the
inlining decisions but doesn't actively cause worse code.

In fact, if I force the inlining like this:

--- a/drivers/net/ethernet/chelsio/cxgb4/sge.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/sge.c
@@ -2257,7 +2257,7 @@ static void *write_eo_wr(struct adapter *adap,
struct sge_eosw_txq *eosw_txq,
        return cpl;
 }

-static int ethofld_hard_xmit(struct net_device *dev,
+static __attribute__((flatten)) __always_inline int
ethofld_hard_xmit(struct net_device *dev,
                             struct sge_eosw_txq *eosw_txq)
 {
        struct port_info *pi = netdev2pinfo(dev);
@@ -2393,7 +2393,7 @@ static int ethofld_hard_xmit(struct net_device *dev,
        return ret;
 }

-static void ethofld_xmit(struct net_device *dev, struct sge_eosw_txq *eosw_txq)
+static noinline void ethofld_xmit(struct net_device *dev, struct
sge_eosw_txq *eosw_txq)
 {
        struct sk_buff *skb;
        int pktcount, ret;

I see a different effect: the function's frame grows to 2232 bytes with the
open-coded bswap32 slightly less at 2200 bytes with the builtin bswap32,
all because of too many variables getting spilled.

On the other hand, marking ethofld_hard_xmit as flatten+noinline, I don't
get these spills with either version of bswap32, and the stack usage of
ethofld_hard_xmit()/ethofld_xmit() goes down to 472+112 bytes.

If I remove -fsanitize=alignment, the total stack size for these functions is
no more than 368 bytes regardless of the inlining or the bswap32()
implementation.

I would conclude that there is something wrong in clang that leads to badly
optimized code in this file, but that my __builtin_bswap32() change is only
what triggers the right conditions here, not the root cause.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3wQzLv47RGV-9n0EfTNpwE_E_VgCE57%2BtYeguWhJXitQ%40mail.gmail.com.
