Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU73RT4QKGQEB5KCQEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C74233AEA
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 23:38:29 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id m2sf6074073vke.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 14:38:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596145108; cv=pass;
        d=google.com; s=arc-20160816;
        b=SgHmueE9nLVbSvXQk40dEBA/f2ozSo241WvEDRFc7OaBKZQELTQIj6Yj6cDojKd3VQ
         06dNo0yWyGua8gdUdfpmaKSdtABYFkJKsUsKWGMfwJ6iWHoYUgIxNyUgLBa9CJumXlRo
         BQ7dQsjdZjVM3Tapn8m4oNnU0+5/m6rmHjXY7rwlK3NoQbJ/YbrQxiZ4KWEWpRMq3/Z6
         9Mz+3smh0q5XPpRBhIvlNdgcCuRlRDJf6w0sl/CDy+H51g3CMn3AyIHKaQ2J/I+SI8+/
         mAjgYAn2wr1ruF92eauPY22/qFtUP/zyC4tZARR/dSscr5Epied1q0TOYxbLR6bHaFk2
         bBHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=Van1lLQ/V6GX8VQN4s3SHxRgY/wxR/1SaJEsdyTU98w=;
        b=Bcdw3ypVO3Rw0fnM2zZoBpXaKI+YUr8O3GJ4v9c5/exBEubYMARIP7EfOjVKOZRqRC
         ZKuUxwtsMHLuaxqlztdL7Edjz+83MXk7pwlcizL9gqBmEJiMSub0J7cx/kfzm99hrMwV
         ooajti3GmpMkH+ZxqFzUzMur/9s3mqxmiWaBicAPy7MJi1G4ywyg6YJVasMLdSaUYvfC
         fGfwki5ZBGD8gOtF99GMhWxQbka858s7UsSID5N7KDEsq2/t1b2nR+r5/7EP7fAu0UzJ
         m1WAOk+YkzpAznZIpZGyWb4csv0ru1tio8LoMVnrGcict/aglPHcNWfHj4pv33+8Fihx
         o+0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qnjABhxe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Van1lLQ/V6GX8VQN4s3SHxRgY/wxR/1SaJEsdyTU98w=;
        b=dn8qOCLBF0d/cX7++VZYXUvG9YITSZi8gU5SCj23KuzsDrBTCPhpB+guV38Jnn6o/s
         xMpu9qwvj7WZnPywr/W8zV4hIYZSn3XmMW1xUNDz+rU/opuEdigm6oajdo1yPwuIBm2a
         unZQqPjiOLYcckkhBIKEfrJy/qBAb/kAYtT7UM6kgW9BHhV5xUYtsbHHEMM1sV+CXvRG
         KZO7Ac2dDQtjLxnC4Ini2F+5rAxGvWsGPg+a0dG3exzRfP/IIygdacFN9Z7qfVRTt/w4
         ybmQA4MqJn9RdyzzAm5lmD+x3TsZoF4sV/9d0hVLNtbfO9475n50fGTb/vf3DXDQn1Du
         7f3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Van1lLQ/V6GX8VQN4s3SHxRgY/wxR/1SaJEsdyTU98w=;
        b=qW+E/ubTg6Y4S4pJZQ8n1YErNNyO31cww1VAq5b8FIf0bRdZJG9G/NysO4LpUMuwnW
         lS1yn/U3+RJGFBSPcqnMN4jXIwjENZD5mipz7g37V3uVTEYYOsUPqZb5+BD7mkoDb8hw
         6Ft6mA+2j+eJK7o+UWVaxx6Q1jTc7JwpmYz1EVgUA7Ngu37WpAxwHahRQ07pc5wc912n
         14G1UMkioXQNK9EJXJ9+qxYaYjGYe8bcClDq+3gzCLn7TvJu2WSuvyGQoIQDImNHOghw
         t5OxFjrFJ1m0Kbfm7v5GsDK2PQjAsLvuXl5B3nzvWbVb8L+QxS2PdiWYfNr/kSJfz09T
         YwVg==
X-Gm-Message-State: AOAM531WtsB/dRfB5jfSynMsjA7Xh/zROI7nLDyOa9OGfQ37T+QVK3bQ
	tTC1qtmsc473xT1NFAcwB50=
X-Google-Smtp-Source: ABdhPJxzYW4B4SqT6k/sGoqJhtIl0qoVtzmRD2G2WSedFO/1VrMoK8OmEL7jP7vxH0rIbVm7rFnoLQ==
X-Received: by 2002:ac5:ccdb:: with SMTP id j27mr671940vkn.43.1596145107865;
        Thu, 30 Jul 2020 14:38:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:904:: with SMTP id x4ls872116vsh.5.gmail; Thu, 30
 Jul 2020 14:38:27 -0700 (PDT)
X-Received: by 2002:a67:1b01:: with SMTP id b1mr1143146vsb.69.1596145107423;
        Thu, 30 Jul 2020 14:38:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596145107; cv=none;
        d=google.com; s=arc-20160816;
        b=qggDlqXvOK0H0X0QjA7zHTjZTvVlLI8fvsS9+2q/d9JE/llJgymrcVSTbsiTfIadNU
         qTBoN6lAvuCApUjmUZOfc+2pE3uaY+0VC8qgx3xChy/siYFTgFIM7s/+yWPUviT/nti4
         8DRfDLHbFAxhOURaAdyXbB3Pzu0rhoVzuzlWhUAeNY6FJCx2t2kp8TornQN4l6G7L9IY
         1AWejn/crzvvUg++qph4/9iuCjXi/eafBMjBCQNB265JSWOoqbQOdj9lPLW6EizEANPG
         lKwCX+hCCRN89v892wsYKLnstOC1Cz9JMRC10/Jkj0tLXW3UlktPkUf8YypWav2oM0P8
         IcBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=+7iJBeHFSgUXNYDDUMkhTRJa4ViLM+xYyje6xzFbU1E=;
        b=YCoXDnJ5Jd9xvuCuDCutebD0YowNjPiBlbaQZ2Yn+KoL+3BUh2+pPlEJIlHqp2HBlO
         1TPge+1XJhGlDQY2Qa6g2ZdZ6aPH5Ejul0Is6HY89HJn6MCymNE17ja7vgwSRbg9JMEd
         pFhkKvV5DGksFl76eB8eq//uKICNH4Z3BTT8temJU//Epx6wL3uu3wGP1qJkS2lQumh7
         sv6Su0ulDkkb4lC7KgMfnUEljDg8lIzOPXK7cWIHwx8mL4e2OG/vkZOFzW/u0TYWeKC/
         Ym0Ax4khaT0st3YcOU2A2mxVjvPvmsYNGJTwg8owKBaK4jq6curUbaudtnzHae9j9uyT
         pE8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qnjABhxe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id x6si65191vko.1.2020.07.30.14.38.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2020 14:38:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id w17so15392319ply.11
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jul 2020 14:38:27 -0700 (PDT)
X-Received: by 2002:a17:90a:3ad1:: with SMTP id b75mr223762pjc.25.1596145106638;
 Thu, 30 Jul 2020 14:38:26 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 30 Jul 2020 14:38:15 -0700
Message-ID: <CAKwvOdmP=cw1heTNR74fMD-Sp2utP8Tc2_O9+ui50fovhFeT+w@mail.gmail.com>
Subject: LLVM MC accepted at plumbers
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qnjABhxe;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f
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

Blog announcement:
https://www.linuxplumbersconf.org/blog/2020/llvm-microconference-accepted-into-2020-linux-plumbers-conference/
List of accepted MCs:
https://www.linuxplumbersconf.org/event/7/page/80-accepted-microconferences

Get your tickets here:
https://meet.google.com/linkredirect?authuser=0&dest=https%3A%2F%2Fwww.linuxplumbersconf.org%2Fevent%2F7%2Fpage%2F47-attend.
https://github.com/ClangBuiltLinux/linux/issues/1113

Stay tuned for more details on planning/scheduled talks. I will be
reaching out to more folks soon.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmP%3Dcw1heTNR74fMD-Sp2utP8Tc2_O9%2Bui50fovhFeT%2Bw%40mail.gmail.com.
