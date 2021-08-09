Return-Path: <clang-built-linux+bncBDR5D26IZMBBBAHOYOEAMGQEHMOGGSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6813E42F3
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Aug 2021 11:36:01 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id d69-20020a25e6480000b02904f4a117bd74sf16602447ybh.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Aug 2021 02:36:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628501760; cv=pass;
        d=google.com; s=arc-20160816;
        b=yZiWYMphYEoZHdsy46GdgL01Ov9LoEvwFrTVOaD6bWaM0jeh1RHlFfbjl9xiu4jCDN
         nTbw3ixc4wp8LfOuYcTujSqaxFGtMfPP7oebyOOkhPPmraT/iSEsuNR/YsuQV9mpiyv9
         rTaDPve16QgsN3M834j4AiXMlz4ILAbVJL34MSUmuclcDI3b6tOuelGj0FuwOWczYlbH
         PvUbkIIwjumPthHNkIbHCwmdWyTXig4hxh/YQc+tUUxdINoZ5AChlB7C7H7hBL4ytZLZ
         wr+cEB1B4Q+hLMeZvgz8/zMvKBb8bAE7wVJIEpYuG7sdvYh2KDvAaoxwwjen7/TAoFR5
         ghqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=cwKNBLoUe1vXLo7rg7JS8V/TDfmXpYiKz/+RRRSUbJ4=;
        b=vpm0cqs0+xDvpXZ1Pk896g+TqCktWjtxU/emK2vfkohiYydmiCd+y5t5V9PFqJHLtf
         JUBsNpAMHUQTEJ3pD7lrzsYHMWJOLFohPggBC7IUtfR9uhnTCPulr1d1emigfEOg/tgx
         S69oWp8MoCJ5149o9is/BxVzTUFWm0S3YUVLluhDGLfb0lEkZbb21LmePyA4W9sV6aLs
         1/9kAu9fXR/5ZKiDvqF50mwDYLVC+MRRmxLttsf0LYfYRIVS5LV9DUnQEw70UTbkfG28
         NbxwyvlHO2/dzEJ7MfC+CfS6WFr48dzXb8Ue89z5Bs6zfdflhI5b+4XSxeE0fwn8CGgX
         1z0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Vk+/gz/L";
       spf=pass (google.com: domain of dianatranmalaysia3@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=dianatranmalaysia3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cwKNBLoUe1vXLo7rg7JS8V/TDfmXpYiKz/+RRRSUbJ4=;
        b=O0vyhGJF+ViBytfInQ8REXx/QKfx3N4XCrQxC5pZOlXiTeTeL1fdczIWdIQYi6KsHc
         hS9Y+1MLDuD5O+XfOZQhU5pJQiEjshuWx/APTE0aBhoA/JyZwbhGQp8olHPwndnlO5x7
         X2BHnq8v1COnCqma2AQXiYZECzryHj9uF53vjm9prWM2GfEBGDHnY//++aeqo9FNEP7z
         uJMTt7/u15U6doNbKyGKaf2afd+/urIj+KfdMzJEgkIv5vyutQZptW1oPid8yXYaa0GU
         TvPv27Ju7t7e3Ojs83ugGdh1hD6fGH/0LCYpUMneOJ4yBYXKnWTISl3HFTdPma+md3y+
         EETQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cwKNBLoUe1vXLo7rg7JS8V/TDfmXpYiKz/+RRRSUbJ4=;
        b=lC1PgNBZBgXlX/uoSJmohZ38MvVHXCMgVRw6BNM3bSt9pt/uXdaK1sLm8Ufk689TBk
         Ho7BrepDxup3LO9nGYvdFubWFgsv/ybYkY8eA/izRh/wDfzlf7v9wMu16WRqTRJxNJH5
         JTV7+09CXVgdtPkI/YLOC6TKr7aN4YJGqq8I5NjLjdTRmlw9sa2qz3857Ds7/Pf3lotI
         bFA5TgAkEUvJTKH/Q56kHeqwE9fps3abjkPt+Ph0F6xet28F/m4pb9Lg07W8NWHJels9
         ZFnNWiwXJjsrUtosUUCnDHEQM6tf5dzceyszhp2WC+77jCzShhigHb4poWx9+2Wy/Zz8
         vw1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cwKNBLoUe1vXLo7rg7JS8V/TDfmXpYiKz/+RRRSUbJ4=;
        b=F35tPTckoKO0tKyqVgUEKvrK9XjtHDrccooM7m0IwU5ss+Iruek7vcHH8Nxe2CRGC2
         QetrbNKx1IY/OSNNb/6D/F2da6QvDKjjlnBxVbiAw4ghgp2VX7G1cvDYeogfpvdar3Ht
         CCrkNdIuzLkSV1z5lbgncrBDqiYu39Zb0MonJ94HH+uWwk81kYOk9t6lRgS9maCtxV6Y
         JfxtvmtpDH9aaYfIu2CO1jITSTH7x19m1Q47mH4EwZTknLbnhtWL0jHRL/N714mzUA8u
         o1KUOMagoxrZSv8irZvg8nG2/rBgzTTTfggp+8lFT6BwfxjU8W6ji3iF4ebr7tkkcbJj
         rppw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531o8KwnY3U50aAe/GbyyCh6eHQlB8M3Q0qfxaCEZUW8LPpYfv8E
	wKNkbwEhbrIWmmvZtEcQzpY=
X-Google-Smtp-Source: ABdhPJyRbpcXzsxWtx/8x1+yzumXz4g9K3jcycuSCjRSaEIlkX11S28H+sMabzeszAbp2GSRRHd50w==
X-Received: by 2002:a05:6902:4ee:: with SMTP id w14mr29581536ybs.194.1628501760416;
        Mon, 09 Aug 2021 02:36:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:d4a:: with SMTP id f10ls107031ybr.6.gmail; Mon, 09 Aug
 2021 02:36:00 -0700 (PDT)
X-Received: by 2002:a25:db89:: with SMTP id g131mr30039028ybf.302.1628501759981;
        Mon, 09 Aug 2021 02:35:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628501759; cv=none;
        d=google.com; s=arc-20160816;
        b=VkOwGAmQ970ZzvVOPImckalKZgRuF3+fXLuSZ1aQYO04Jpr2sQvmC2E4PfF2IBW8L9
         FY0KkOUEyjA8+pWEMaGSvpmSC+veJLDUy2ROCetRjesibe3yc2dKY78ngSqPtYq/DJQw
         L4OiX8Jd6m7FEGHBJhJKOawbkZMSsi5fSxNigVZ/NzZSy42hk7wYQ/m6e3JnE7EotEzm
         Mb5gOc/onGzouF9xvjs3j2Br5eKt0ovV3M4BDnU81LpNeCCsDtuawUlvZ/5JAb+4Z+3l
         h+dbQQ+MnNocs+uoLzFgiCEhvMgY8cD5BNwW51ltQCSsBegu9p9XPKAk2jbp4j9XbtV1
         0K0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=ww5trxx5PvOfXPCjUVH3KfvfIkFVvjaQEYOzkL4CIk0=;
        b=xEW1kOdUOw0IQB5LSpI72dNjiHXLN1BhYsjsZbCr/kG/PV7m6sL8cj2oLAugAa5b1t
         ByUWdKO21CiiJ8R3lufHVGERQExEcUzawnqjZgpyUUyBZ62ybxpfJVXfALvn7izDpqSQ
         I6w9TDjKAne1xHnX7Q5HqiljWBXSn8GZo+EZ+B1Z6RIMzU5y348YZVT11sLQcy/nY6AB
         wuwxMMG7gLLc4qWMqZ+LqxB95h0CKQVJAP11Of4OY7ZI9oJntSH/8QYftC0siC7lYHQy
         Wr2xzEz8LdPULgQmKfBiJDkLJEvRUQwN5cM3QDN/nw8ftt2n6EKYGeN3lKdP/ISl8C0Z
         D/dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Vk+/gz/L";
       spf=pass (google.com: domain of dianatranmalaysia3@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=dianatranmalaysia3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id e137si440152ybf.2.2021.08.09.02.35.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 02:35:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of dianatranmalaysia3@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id o13so17629568qkk.9
        for <clang-built-linux@googlegroups.com>; Mon, 09 Aug 2021 02:35:59 -0700 (PDT)
X-Received: by 2002:a37:6512:: with SMTP id z18mr19928785qkb.149.1628501759742;
 Mon, 09 Aug 2021 02:35:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:622a:188f:0:0:0:0 with HTTP; Mon, 9 Aug 2021 02:35:59
 -0700 (PDT)
Reply-To: dianatranmalaysia@gmail.com
From: diana tran <dianatranmalaysia3@gmail.com>
Date: Mon, 9 Aug 2021 02:35:59 -0700
Message-ID: <CAO-Ha-YYxbg6UUOqEax2kpY4SsCR8LC1SFZrj5qLvGWfX3xFSg@mail.gmail.com>
Subject: Mrs Diana Tran
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dianatranmalaysia3@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Vk+/gz/L";       spf=pass
 (google.com: domain of dianatranmalaysia3@gmail.com designates
 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=dianatranmalaysia3@gmail.com;
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

-- 
Hello and good day.

My name is Mrs Diana Tran,from Malaysia.I have something very
important to share with you.I will give you more details after i hear
from you.
Thanks
Mrs Diana.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAO-Ha-YYxbg6UUOqEax2kpY4SsCR8LC1SFZrj5qLvGWfX3xFSg%40mail.gmail.com.
