Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVWT7PYQKGQEU4AZEMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 755AD1565A5
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Feb 2020 18:03:19 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id z79sf2774930ilf.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 Feb 2020 09:03:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581181398; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y0FmOBacyf9rX6Y1BHWY4iHlpVmpo7Tr7HWJUp75Uzk63sto4X7TGlaWBBRp5GR5eT
         1YcyJsNbE3E3p8PKWuJviWejxVu0jJsRLBMAR5DBTVdt1uPUtGsavT782qOuGOL57YTm
         67j16Wa4WKl3gvS9UJQYdhSio6bI8QPWHolpsmUvX2hQbsi6FxX5Pp4UNzA+M5yiVXNN
         oQ0ICxdZyyYEMHz0+K6g1OBkJsQnRz3e6z9RsWfCRTejwXDtZF6h7BVlct/1VQyLvOsZ
         uzE2BZisnX4lIlmWtwSYoNXSU44Z/+T0uNSejd3kcss9aB4t+yZiqiXkzlthYou0PaM5
         Fuow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=aeCc+uXm/KtFor1Ow1cmui4xFxy14qRh9c1+ebJx8jY=;
        b=BOJyo5UQclEWP5XFKoNYqjXjoR83SOYQiTQ4nxCjc8v0SDCtPVUfURAnea4rGdPMjG
         gckT2kLzgSMC1fI5JrY6RKPSkqc31DJX34DWp9GtCw2qrabQbYwAD4o/MJgCGqTESeqx
         v6J7KhLiAzp2fZUwNmclh45xY2udZcjyKr7PgFTKIRzszVMGxe/uH+FM9rGsfrjxUGpV
         UTgU/G30NtqwDNxtL7GEbYTjW/pd4iVZ6pP5n8b2w0Bky6+LCRLUTNieTG/rET9lwBIb
         oLNJe8zNBwP8WVf/UVTvwZYzth6I0rjw1i03kf28psACJid0XiMEcAua+cyu4+oPVL3l
         6TLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="V8/p1Vig";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=aeCc+uXm/KtFor1Ow1cmui4xFxy14qRh9c1+ebJx8jY=;
        b=nU0dVOPv/HtHW1S963RvBcw426kTP5a76MzYxP6yy7tosLnt5ISL+TAZfS5edEjkjd
         sC5zYuRIqOPSikGm085mjmi1zRS8Kbaqm8IMn3aaD4JMC7lwPgPk2JAqooONHlF7sd+R
         Acl7glET9JLR5d2aExfeGLw5vcB3UuqUJUznLUS3vqOHUk/NDv12QnsKn5KG5WgVHso1
         3OjEdLtqDDCAUmlopV7JFci1KFmIiXnKEJqEu0nDEz8OabPup1ziWZUQ4bclcyEC14UG
         YI5ccyoUqVIFI/zolYU9gdzAhiHH0Y8Ja+CByvjnrL4UrYxnnsIFQ2gHtYefGlYIBSCU
         GOcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aeCc+uXm/KtFor1Ow1cmui4xFxy14qRh9c1+ebJx8jY=;
        b=p5EacEsu+aO3U6aJOHw9fO0r8gojP6zCtHt4mJCRJjTOiBB15Ayit8bWCjguYC2bjv
         IfwJbVBa2B5cee80aXAZgOTDLvMo+QwpHPi5+Ewb8CvRdJzjZDPkvunC/0GzQ/etFqnF
         sT4nJ63PET8hndue7Cx7B43RAxVjhFNjmr+y8KYG6e8+O4yDyfvrG0paCTP1X4ZQxP7+
         QZmLieowozqZwLDlw/BhwrJcoqrRW8DIxt3uFROdrhfbEZ/G/2FeczM2GnNdqtNoZ5Xq
         DVU6XY2fPBCsDbCfoeL44SwJpCfOrz50GsNPHQ8wtrRin08GOAiOu/R432MJhs2+FGdz
         9AEg==
X-Gm-Message-State: APjAAAVM7W6D40vvY7qgTiq//NaD9p56uwN8rSyNE9oS2T8g3zvWcxfF
	24C1h2oybx3RBAk0dXXziZQ=
X-Google-Smtp-Source: APXvYqzkMi13BfDIcQgeBmd7BmrxADZr2khkkKsg5sd7lpSZXvMzQMN/nkUokitsTa2Eebb9QW2IhQ==
X-Received: by 2002:a92:88dc:: with SMTP id m89mr5099514ilh.265.1581181398297;
        Sat, 08 Feb 2020 09:03:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:f13:: with SMTP id x19ls626131ilj.0.gmail; Sat, 08
 Feb 2020 09:03:17 -0800 (PST)
X-Received: by 2002:a92:d0d1:: with SMTP id y17mr5195730ila.83.1581181397887;
        Sat, 08 Feb 2020 09:03:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581181397; cv=none;
        d=google.com; s=arc-20160816;
        b=x2o03WQ9h6Ex/rdggF9SwqZyltLiAihulEQsqc/kSmSoUCOIh63R3770d3UdV3G9Gj
         FIVeqOhAO1crOqkQzGV9Z1Ol2ppeVfdXNyfNSV41wbPX+ZGRN7qdUQLjZtFAH3lvQ0qc
         xM+qqAkhNIu03x9atvuVxZrmxLLpgxzUnJ5/khHtXy9mvDlwH7DZWNI0auDly2Em/CTj
         0C4ziPhZHnywhkVBMVOmkJXCmbQJOgy747fgtSvAQPNYCEmo7qrE6ctCZ/KJhYb3SfbR
         /epjQCUU3w1EuX+F8gMB/Js4t/UcOaHSV/+ITiBg7IMjw6kQ4eNHZHdcJSzMi+dDCGKC
         OUGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=gIOdLYwrn4g13j8MieiDVCX4W/Pdwvc+Y03GRRkA0QA=;
        b=QI4UikkK47+qiI5Yc+4IsF3An34yeueIlp6yEL0JRlauDJvba9ttZYZ5UkOx2x5lcw
         VkO/BA8XMupJ7bAXKCFsuTdkCbhuaj6oawuND3VdMiJtOdAGM4C/n4Yqy8OcQ1QAuVVX
         WglAqxoCd+gjIBEOesrj7yK1dak1bLRvlmVTv0R0LI7X0gSv7SD210DOGLlXz3btB23t
         RM7qaRgightDHB933tbIXuk3xTG273qKzN+ISIktDxptAWzTfw4GXxAcHiU8ocIoP8mw
         u1hQMnC9CFMIKh+h0viQOPpjBUblK6AhyGbNz9faKAW0xiClQUPM6GZL5N0zN8ZxGaZZ
         DUHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="V8/p1Vig";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id z7si232043ilz.1.2020.02.08.09.03.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Feb 2020 09:03:17 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Received: by mail-pl1-x633.google.com with SMTP id y1so1052470plp.7
        for <clang-built-linux@googlegroups.com>; Sat, 08 Feb 2020 09:03:17 -0800 (PST)
X-Received: by 2002:a17:902:8a88:: with SMTP id p8mr4622431plo.179.1581181397063;
 Sat, 08 Feb 2020 09:03:17 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 8 Feb 2020 17:03:04 +0000
Message-ID: <CAKwvOdmsx6OGr2FiHvATJY2dvFURrc8suYFSt-md_5tCV9ORmw@mail.gmail.com>
Subject: Thanks for attending ClangBuiltLinux 2020 meetup!
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Behan Webster <behanw@converseincode.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nathan Huckleberry <nhuck15@gmail.com>, Dmitry Golovin <dima@golovin.in>, Peter Smith <Peter.Smith@arm.com>, 
	masahir0yamad@gmail.com, Sedat Dilek <sedat.dilek@gmail.com>, 
	Stefan Agner <stefan@agner.ch>, Bill Wendling <morbo@google.com>, 
	Alexander Potapenko <glider@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="V8/p1Vig";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633
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

Thanks all for attending our first meetup! We hope you found it as fun
and useful as we did; late night debugging and bug fixes, hallway
conversations, meals together, getting to meet in person, etc.

We'd love any feedback you have for us; reply to me or Bill.

If you have slides, please email them to me, or better yet commit them to:
https://github.com/ClangBuiltLinux/CBL-meetup-2020-slides

I think I will upload photos there, too.  If you have some, please
share them with me.

For logistics, please triple check your email to see if any flights
have been cancelled due to the hurricane in Germany; already one
flight has been cancelled.

Also, please make sure the hotel doesn't ask for your personal card
when checking out.  It should be covered; have them contact me (they
should be able to get my room via my name).  We've had some issues,
and I've had to clear things up but we should be all set now.  Just be
vigilant.

If you're already on the road, safe travels.
If you're joining us for dinner, meet in the hotel lobby at 19:00.
If you're joining us tomorrow, maybe 8:30 in the lobby/breakfast as usual?

Thanks again for joining, and please remember to fix your compiler.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmsx6OGr2FiHvATJY2dvFURrc8suYFSt-md_5tCV9ORmw%40mail.gmail.com.
