Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSM6YKCAMGQEF45VWYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 065F23723C6
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 02:03:22 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id q18-20020adfc5120000b029010c2bdd72adsf4869247wrf.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 17:03:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620086601; cv=pass;
        d=google.com; s=arc-20160816;
        b=v41PCvRfKfmdhnrvgzeHqc2Krf6pLIRI+WSH0uva2XFzR1in0dBQCDig0bxugm6JZL
         H8NsHC3tQmFRZmePyyEqs8RNqDwmhHk6oqEppQhYnN9X255aJ7lPAJ5JQOf5/uVlBmXB
         3FlvGb818ffOV3FV+OrfPDX5nSbftw2uasRgjbBJQgVLQQ9BR4jX7mq5rfnm3NISgNVl
         NsxCkl5VR0oAeH05+q0oDpwpkZWz2NpbsRhCSbnugVZe3eqKcTcwIbcNetw6adm4SaOT
         q7RgiQh6KjNBTAcESaUvGGtIXV8/S5Qnnni+a320UCQIINvg2eGAaRYNqjzaHC4o6cF0
         ihng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=dZyeHLdZtcP7rh853CT4NvdT4G5F6b1nCfHGrej68v8=;
        b=KsaSlhva5hbBEnBNemZdbF0baE1fwzvfbW22/A2RfLc0S8VjDW7H90oom7tLETCIK3
         dWedkvjY9y7PmRKbnTTT5JsiKTQ0+Wih2SDx809RcmArLTduD1coMIkirvSMI+AL8cvb
         nyGw50NnDLP0E9aU2dosig5E4n3OUqEctxQlDko7Apkmxosg92Uor1l3rZfXz/0SKQEz
         JsgBt+UQ8r3Wr8kttLyIyUUXmOfzH85cZye6DaI88ZtzQ7qtOP88Hovv+WBF0WYTtzr1
         hxZIYCRHNX3JPCTgYP1gimT+VC2Ogi0pfOgI45O1gPlHO67eWmMx//wa29k2nAOh0zt2
         JYSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TsdBbbxw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=dZyeHLdZtcP7rh853CT4NvdT4G5F6b1nCfHGrej68v8=;
        b=TCPGiD33GQhSEyUR7dI0/+6oIhdfjetpPDE01WNfbaVj/6uO0YxJDamifDqJ09jJ+Q
         nNRtH/xJ0DMSaro6qnzCn5Ugv0SSyw6YLKfHxDZ70G9OkqKRhb1JPJUbP6XI/41j4GUf
         R7uEDdMlePyyiHYiZ7pEuGqLwwQRNgLZ4G6q/RHhri2mbmZ8ZFOkihUsPEWWSBuOdbvF
         qZPYhqsgj5I4XjCXFB95bmBaSAPV/paKPkSvK/DrrduIXtx8NxWieReyWFiyJHV3vsnT
         bneyLe4b3YwzAC2GK6uLyLVUsm5RJNgL4Bkv5YohH5bIz+JqFjN/NOPa2t2Clwpx4TLS
         FUsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dZyeHLdZtcP7rh853CT4NvdT4G5F6b1nCfHGrej68v8=;
        b=TNpFgNrxMnxMhNnxWZ+ppZmsbPjuIfYWSsX7Dviw/Te6Ncm3RIaTWs6Xrcsi+BV6pe
         S3lcvOweyXsuY1qerLbFLWC67B/VyfE+U/Y+exgSfXpq7o2asPPb6lcB7Ftu/4udRd6a
         9bmYbDTu+IIRO7Ok4IdAJm3dJScpv/eYpyjmunddk8TMvvUATRBj9zsLv96ekozcutyb
         dOQcxEva6jpywhuJYprd225qf6znjs4shJ07457LDP78jOHCyIQCKwhkN11waW/0QJ2N
         vEAkwDOVWor0i+jcJMvcr2o1gcpuuvjpp9lRjAxolOfl7qK/QrE5Y7x7yUvppdf2l+b8
         TsNg==
X-Gm-Message-State: AOAM531VlMIelcqzSFHBtn9KEi9YJL0BAHyngajXPv8nVEWDnuVFp93e
	SWE83G02VgJOnsPK5gpSdnA=
X-Google-Smtp-Source: ABdhPJyJXp/Wzl/hjwX2VGYPfZJBTGb2v7m2uD92fUZMitXS3o+wTwvG8EQ81i3fxeJNIS0pi/HOQA==
X-Received: by 2002:a5d:6e85:: with SMTP id k5mr10929839wrz.384.1620086601788;
        Mon, 03 May 2021 17:03:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1909:: with SMTP id j9ls392476wmq.3.canary-gmail;
 Mon, 03 May 2021 17:03:20 -0700 (PDT)
X-Received: by 2002:a05:600c:218d:: with SMTP id e13mr1043933wme.151.1620086600931;
        Mon, 03 May 2021 17:03:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620086600; cv=none;
        d=google.com; s=arc-20160816;
        b=Hdowl7huYZs5WlcDIfGLCh0JsYwevg74n6zOZbkgf+ylzR/9p1yLRUtjuAAsBWb7uY
         flpTIW/Nx9lzbemVOLYH8X9r5Qs0xTU4BlJYYieJGA3GNqMzZSMGkI/xO+BgXZsjA8Om
         4r2olzm0GGy7rzsIJTj8U0vDl8AfaBAF6Kgmx0+53MrThoSKHw+3KvQBWakhJwCU5jtf
         C3VwQCF9ezlXwie71hFaTqsfMbvly6pAPHF5iDs9bg78U8qXZNE5DtDyOKmA3cTRJoSj
         5JQp76eNL+mYji0Qydu5ukMQSLqbqFBsvu6fdGc58hI+SDtBIPtFAPxY3a5zY+PVWhLb
         fY3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=D6iZO6K2boziHlAZF4WCKvEhS9b1bIR2r2AwV6Wa4Mg=;
        b=0lMilMwER8dDIjjAUE5aJHkaNmgRqUOC/JFP6HGAufaedhdmHW/8y190qbhtp657B9
         DQ0WM49FTl7mNtyqcVfiaNJnX0ljPRzNYo3Ny/9ryxfHo+AQWDtCyIlZP1zcEsvaEyt+
         aRZ5SeEWGA0MNG3dgJQeyl8Eho3qh3CugGq5tFD1tL9jP+/0/+zMip/mkSI5SXIQoicp
         nuNRu2aZ0APvS6qikbEvqycEiypNL0o3DIRzj1IdI03ZgW5FZE+/jIxiw5GPWgec1C/X
         I1edSJGWXEc8vH8FKXQdae3GcoLfgLk+V+L1TlYVQoWrvQcjlNtirH9MO2Fl0rAlu+t4
         wAIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TsdBbbxw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com. [2a00:1450:4864:20::229])
        by gmr-mx.google.com with ESMTPS id c9si72916wml.2.2021.05.03.17.03.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 May 2021 17:03:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) client-ip=2a00:1450:4864:20::229;
Received: by mail-lj1-x229.google.com with SMTP id e12so6672235ljn.2
        for <clang-built-linux@googlegroups.com>; Mon, 03 May 2021 17:03:20 -0700 (PDT)
X-Received: by 2002:a2e:b6d2:: with SMTP id m18mr6935846ljo.233.1620086600246;
 Mon, 03 May 2021 17:03:20 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 3 May 2021 17:03:08 -0700
Message-ID: <CAKwvOdkRXzcskNoMkvSuAQW039dBvi1AffDE4Sj8uqb_ryfeng@mail.gmail.com>
Subject: -Wuninitialized and -Wconstant-conversion
To: dmitry.baryshkov@linaro.org
Cc: Stephen Boyd <swboyd@chromium.org>, abhinavk@codeaurora.org, robdclark@chromium.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TsdBbbxw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229
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

Saw some new warnings today for ARCH=arm defconfig LLVM=1:

$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 LLVM_IAS=1
-j72 -s defconfig clean all
...
drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:425:11: warning:
variable 'parent_name' is uninitialized when used here
[-Wuninitialized]
        snprintf(parent_name, 32, "dsi%dvco_clk", pll_28nm->phy->id);
                 ^~~~~~~~~~~
drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c:385:30: note:
initialize the variable 'parent_name' to silence this warning
        char *clk_name, *parent_name, *vco_name;
                                    ^
                                     = NULL
drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c:975:48: warning: implicit
conversion from 'unsigned long long' to 'unsigned long' changes value
from 5000000000 to 705032704 [-Wconstant-conversion]
        .max_pll_rate = (5000000000ULL < ULONG_MAX) ? 5000000000ULL : ULONG_MAX,
                                                      ^~~~~~~~~~~~~

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkRXzcskNoMkvSuAQW039dBvi1AffDE4Sj8uqb_ryfeng%40mail.gmail.com.
