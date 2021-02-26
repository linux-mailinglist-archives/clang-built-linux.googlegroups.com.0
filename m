Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBPFW4KAQMGQEJXX6NQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CAC325DBD
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 07:54:53 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id k21sf6396462iow.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 22:54:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614322492; cv=pass;
        d=google.com; s=arc-20160816;
        b=BgDPe0zl8rxwAT+bOhX4w++7YB55SKqDKRLYFVqyRLmEeJA7dJQO2s9wXUyqLlU5ud
         fytAEEO25tR3xYo2TOpcFLX0L0+BL77o2fUbLuJepUduVRzbjqPnYHLdTJF3hK/5ZtZL
         81ORKXcicTM7rfgPdUAsholPwv916R6Nqb/1LaJHRvWtpwWuUathKN8e+2vmfkYYJ7fa
         KxS6gSoq+yWpYkAxCinfCPa6xioJ7DRijDREc+CfAU+c45AeUWXDx4vbfN5z5JFhg/2h
         Q1vTnjtL4X7mH9EQMgHOH9iCT/L6UTS7uwIWMa3BfNLvs7OadSo1j7trvq320a8f/Kgq
         /6mQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=n5U/KE9XS1mF7hIYve1UoObiZRiwkj+MKR7OQ5Ea+RM=;
        b=ZSSweSBd6HpsVYFFk1FTlB7B9w/1oV+ZNip9C0dYRp35QbYhBLOr8DR5hY8oJuz/V1
         GbPTBU7xT9ufHVACG1P2gZVfQUfuBQ5Qf2Jifk8RGaJYyOwBTxJWtdwonUQQ2W2cVig2
         gTqfePjOzN9kzFyL1i7FchI00sNP9Qe9rylsYQnXyumgNUYgjNKYHHJRlNCsvz921DWw
         GHfjeCZYk4W5Bh1GoRgjzB7ZdiVFQsMvq+pvzMqiCuEN1PticqtvaYmip3KnJ0EOpLSd
         YizlMltoJKKOoUoz9HZgwe5E5czOdxCuBJP+PaisqT2vZo6zkue+6emoWtfJNeVTV/yq
         p0UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TNbVJm7u;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n5U/KE9XS1mF7hIYve1UoObiZRiwkj+MKR7OQ5Ea+RM=;
        b=CZvcXeK1od6m9PKCApAYXe8QtYj7d//AF1VseGx4DuTT/2yjBfJtWzg2SAnLJcukfo
         qNAK2jN4BbMHDsktyirP53IMV4coe/q4F1RZDAHyt97i+9OLN5+bttNe8F3uaAP82u8s
         9QLj6H7pjYUcsyDOvoJkQaIWCIdbYm0I642172q0BD+9KQKkEUl2f6HUOCyqe2gjbgAq
         YDlM38j0QRzzQdcryunCzN3tt9l7HZFzWxGZiymkroLf4ORYBjs2UHtztHBl7IAZkZcl
         mZzdrXJcptlSJ1AIpT0AUumtHOof8+P9iGmz1lFZeAIN5tnXwQISPua2duSkdvEiavMm
         PkGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n5U/KE9XS1mF7hIYve1UoObiZRiwkj+MKR7OQ5Ea+RM=;
        b=KPZcbi6TQUZj5rZ8s/22dzsNe3rULSBy+xmZR9IVN4GPINelTcTz4UKoNUYJfN/CqD
         TTGbavoGQRCXyzsA6ypRAEUlrT9mGg6BC5WnFzqneuf5pdwHsJauNlYJ28GB1ybJLG/b
         WgkelFfEsHzRPmFq0fhgBj98SCXoRENlqGJa6txzD8/BtSNeHDbn1oSkLq5QfBPjsOFd
         dQHok678ym2TOOJWInNopORVWs0AikPpjX6vd+1FacerPYgLPPpwtNjObq8CTR3+rxTG
         G1gFf1e/tL/CxH/qZGNRLBQO+8BKTPAFI5x8yZVU5Qzd7CsuuC0o93X3cJIrPVgJN5NU
         nTtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n5U/KE9XS1mF7hIYve1UoObiZRiwkj+MKR7OQ5Ea+RM=;
        b=JWbC1ec0YP4qUYPbu1lAB2XOn6A+7emjLdPjPgi65ztWKFb0uTUwXxM3Ug7+Hpitcy
         MZhWK7GqiCYj/Z8j+Zl2ai+GmA4C7Qco1btjQbzoogbiXQnF/9hCmMWttPgbICwCtTbJ
         ARiwg0v3skO5Mr7nkzJX7TB3DjkjN8Xt5ED8YSyhs6KLKlqP60XK65q/DFgM8QwBbJRr
         O7eaRutBpCN2Z9O/PB9iikN/Ehd/QgPY2qZnxIGzeWqNQLTkU03Stv38BwWVLEHkQmFI
         flERl8mUwpPl6WuDHAaYsfl47lCT3P49kwS6aT6nLE5YLhCyIdVk7YE5/o2KuwEs7uyl
         Ztjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fpiMFf5qBRVJwRloRAk7adqCofrof9pKVIRCesTNyh27BlyCL
	ejp3fyfrkdAHiVOHLE3FBVE=
X-Google-Smtp-Source: ABdhPJx4n9G2OhUCJ+X2I6SzqB97X1IEt1QpX46Pp2goZzNBQOJ81L1B4h2I8fLjVsTGj2OOcI6UJg==
X-Received: by 2002:a02:cb45:: with SMTP id k5mr1553199jap.107.1614322492228;
        Thu, 25 Feb 2021 22:54:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c549:: with SMTP id a9ls2066337ilj.10.gmail; Thu, 25 Feb
 2021 22:54:51 -0800 (PST)
X-Received: by 2002:a92:6b11:: with SMTP id g17mr1287428ilc.163.1614322491803;
        Thu, 25 Feb 2021 22:54:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614322491; cv=none;
        d=google.com; s=arc-20160816;
        b=ej8jaBdrIntj6TTJpkgivWbkyxJV3p+HiReoRakQRKF+mynM6ofMyON2E7vfNZ4vrB
         M9vZHADHRIHWVpf5qypIk82NSH6BBjUGvl1QIM+Yewu5ujKQkrzgTMrDWEb7WCXrrdjg
         Z0H8ttsCBCk6EpEd2wnmCHFTXOyluFYFDkRxwZo1oCPHhrr6UTTq6XxUzXtABGvpf2/+
         eHmBx48xjhIzQbfEAljzXZAZOr6MN7yPbAmPRLOTEBShasyjZ6GFGsqSPKN4xLIMzkAT
         T6aCz7wJ4+s+5kzYLfzRAA8BXbJnq7ZB0YLAUL0SWAIDA0Lb5IbhJDvgMg5z7g/e2BGI
         IGYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=eONwbwsfJGryQ84vyFQoB81xJi92GBxeU/6OUyoj9Gg=;
        b=LOtBLFww12kgllC9uGy4AIj7g4EHeiD6NInqOHNP+fIIfxK8Ilzgl9GvSgvky2tPMd
         p73gaEBmP87AAFB72NyuFsSPuSAy8Egl9meslwduJ4j0ziyjtiI0Yzd+fyeztdlZRTh7
         cCVn+r073AdBf1e9gVAwGsPR4e7tKcIaHj9QZM4c6DDJ/Jo9t744hBJEyCHrujPJpOql
         ib5vGUUpyVQdjTZIL8w8WNZXKKwP5/w8bjqeLRTwWW/dhrbEyAEonrQmfZ+BQx6AxUw5
         KJFkFE59AVudzZ/yTP2noe+VL4g7P/us7H2iKp5LGs+7f21O7xXDnXSOaW6dWK/w4V5/
         xSDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TNbVJm7u;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com. [2607:f8b0:4864:20::129])
        by gmr-mx.google.com with ESMTPS id c2si164985ilj.4.2021.02.25.22.54.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 22:54:51 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) client-ip=2607:f8b0:4864:20::129;
Received: by mail-il1-x129.google.com with SMTP id z18so7179803ile.9
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 22:54:51 -0800 (PST)
X-Received: by 2002:a05:6e02:1049:: with SMTP id p9mr1302918ilj.125.1614322491609;
 Thu, 25 Feb 2021 22:54:51 -0800 (PST)
MIME-Version: 1.0
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Fri, 26 Feb 2021 07:54:40 +0100
Message-ID: <CAKXUXMw6H4rSNtbjxp03kgx7QYTniUT=F42KYvyBox1em_1KiQ@mail.gmail.com>
Subject: Congrats, Nathan!
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TNbVJm7u;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::129
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

My news ticker just pointed me to some random news repetition of:

https://www.linuxfoundation.org/en/press-release/google-funds-linux-kernel-developers-to-focus-exclusively-on-security/

Great to see to have such a great supporter for Clang-Built Linux
long-term on board now and some media coverage on it :)

...and of course to Nick pulling the required strings, and to Google
having those strings :)

[For you insiders that is probably all very "old" news by now...]

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKXUXMw6H4rSNtbjxp03kgx7QYTniUT%3DF42KYvyBox1em_1KiQ%40mail.gmail.com.
