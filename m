Return-Path: <clang-built-linux+bncBCP3NC7J64FRBKP4RCNQMGQEFGLGZUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C56616040
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Nov 2022 10:53:46 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id v191-20020a1cacc8000000b003bdf7b78dccsf7746209wme.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Nov 2022 02:53:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1667382825; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sfi3Mlcrhcol0V5aL9W7f8hbanhqDjE/0J8O2/iwurM4CzzttTjMe16vO4NkwaQ4J8
         tMgJajHNtQFsAZ4buSLsBo2YVNaFDhlm8GQkP5Sb48tH7UKBhpTB6rCAV2UIrY4QTFW6
         fdJqJ4wowvsxnAVLg5847TwvNx9B7CoO4QPTkJGngKcAdkoL8/KJ/9Fj+ymYvL71djwe
         I2JFPIv/uP96O+Psng/79Gh+oqInMiitV/4/cWRwQw+iwNkbGJ1RUPCvTyigw8fMoaOD
         egk7TiFt/sNaVNy/JGN+NLQuypKSN8pfsJs+V7emZX8rQVIw9FtV+Echc2KShYFY45Ae
         BSVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=twmap9a/02SF8vJDJCT2NtvdONff0dUvxf1nz5jddDs=;
        b=y0qPQW3JEwhsrjW36+JZmg2q26j8MsEaZoPEnGTb9WmKBCUelxbwwVhkPlmCVagYjF
         PXKMPSL2YPySFr3jqXz21h3uqgWAkW8sBV+tDSLP4XMS9E3u/AVBs16O2a6O5inLu02t
         rwsKcqyG+ouwJYkidBr1CDeuso6UYzxbt89xjZfuoCqzkzfk2vuQiO1tx1rTBj5U51yi
         K2UeD55qTiQwhb6IJn7GHaRVdhhx4XXl+0zt/0h0lGbcfQ/gpnHJuJTIgJFPnVSqajLa
         nkHp1OVsZboqNaJwzwA8jTnfPduI1EvUuFRvtc+TZPNwbvQF/f+pJ+Or8m26XMzLEE+g
         2eEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=K4fi3Z6R;
       spf=pass (google.com: domain of asimajamestessy@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=asimajamestessy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=twmap9a/02SF8vJDJCT2NtvdONff0dUvxf1nz5jddDs=;
        b=MIH78OKyTymq9KlzQkus/5eqWTHwk/OH0jshRIgrZF0q0anQe1Ag9QNyzrn+wxwT9n
         0htdLpRpSQZNia+miTCOJgr/yJ6vFA+jX0ZLPJpSapRKB/s+vgHc8DYstNHm3gxZ7jvQ
         w40YntXn3O3y9t6lu9ZO524Jr6Va91joc2bRLVF1dxUWwB6idrv9Li4fDC62VDs3u6OP
         rkcaJ2T51unFGe0OeMTZM6CBdfqwfCkjEUXvkDVizai6zHzuxzq/tdgGe2f04dG9mvvi
         hQgPv5b3xX9LyGiWmkDXsocQGTgFgTfr8B0cDMq3vSjxImsvR5wM2MNEgiq4nvWErudz
         LJsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to;
        bh=twmap9a/02SF8vJDJCT2NtvdONff0dUvxf1nz5jddDs=;
        b=kGSey5jb36ErLfg0wW7wguQe4lVYG28A3tqXUyK9RAdH896CjXnFE+CHiDwPcyttbb
         SKpfD49Il2Ui3CI/73oVWp17HqjVaAzG3Svg4i8k2Hqly4N3TRTD7KIn4A91at98+6bv
         IWFp1pxTjMTohoLuKnZMKc3k2U7bqzqDuypKrLlcCkSouwaJNAOoxaAvknSZ98yPDuwh
         HEKgRd00+f0U7mhuBJs9hTgxq6CgEKCqenR3T4moLMJ7QkXWJCgxYHJAIpoQHNgXtUDy
         G+quNyDpdWAxfExtWeca8wsIQdNXqcIc92B7pd8dnLRuLuJ9tp8wQnve+4i/YkMO+j7U
         sOQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=twmap9a/02SF8vJDJCT2NtvdONff0dUvxf1nz5jddDs=;
        b=gfoxq62SsJG96YUdkzF7DgO3PG5oFtS/8HWGyHt30BT3BBX4mZff5xYxkBE907Ym1O
         xwDb6GzxNCWv0ZsF9b8k0IfsJ8Y+/gjXAPAOleIUkKZerc+T7XhXW1PJFjSYnNTBZRHV
         30SuCz1YZwLmX1fZYX4ziURhF8hIukIYVfs7WBUCFdXXNZECJ8gjwBY4TUTAjW/ItL9d
         /uWym464MheiWs5fWDSKzleXYZEpquqNebLGWf9koqEiI/IJzFji5cN/pBczEqHDVKxW
         urs/CHqe4AQ4tIM4UuRp+hPt2vaEP+mEPm3EqhDnwUo+RtZz8WnJO8MFc8z7N8OLdWj6
         dDmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACrzQf0kQ1e8fNs0mKD72zfWtlyb4RJYfXKnt8bpLbzSwUkswG5GY2OV
	3WNKMxrckfMQ4j96q5GLG10=
X-Google-Smtp-Source: AMsMyM6Jezc4TjN4fbEp+6iIbRbs+EjqTCmnxkxsiL0glOV/LdJuccZ4xSnRKT1CkLlCAQWjAYLdcA==
X-Received: by 2002:a7b:cb17:0:b0:3cf:7801:c76f with SMTP id u23-20020a7bcb17000000b003cf7801c76fmr7972724wmj.1.1667382825597;
        Wed, 02 Nov 2022 02:53:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1e13:b0:236:8fa4:71d1 with SMTP id
 bj19-20020a0560001e1300b002368fa471d1ls7512759wrb.1.-pod-prod-gmail; Wed, 02
 Nov 2022 02:53:44 -0700 (PDT)
X-Received: by 2002:a05:6000:79c:b0:236:6f2e:301e with SMTP id bu28-20020a056000079c00b002366f2e301emr14488853wrb.458.1667382824196;
        Wed, 02 Nov 2022 02:53:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1667382824; cv=none;
        d=google.com; s=arc-20160816;
        b=WqeAYIYWfSS9go5fJ3YrSYRG7gtBu1wiSkQcGchnhdFBptV2Tz9Hdr8AMe3wPIiwHd
         M23R59K9yjn8j8kmQXF0CMsZRoMY6YujO50ZHTrEH2gTRFMARH6J6SOBuAQPnapoRxZC
         AFnNh/HCXtS0/tmlQ60HwQz7WKNKLz2UqLazOhwq9+SS2MWCeZjXTUXu9UIQtYKKjsmk
         uld+AYs9sa06PWRd+YHcFzig3TVwdOVzslwqeJNdUXg6i+3TM6NnlJEBpwnXJy6yclVV
         wx3b6hrwb1u6NJF9Loue0VskbZ8c+kYexzuQteBvrubt7EUqLhBgB0oUASQoFcZOPRGU
         s/Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=FQhMvR3cDjOH5Hdz57OFPmp17ZgKw5XK3jgU5jJjkDo=;
        b=kh2wBl5fkRBrKlYFNncvheSs82L0CcxkL0IfaC7hzC8clUJ4Ft95powovgNqHAfoJY
         0eI/qJMFb1BO2wFU+b/7iIg2wSWnNXiG+ThpVzj3Z+RQeqdIgYvnHFzaVfjtSh60h7qD
         pW3Aygk/EponQP4DRCxnR3x0XtIf3fyPasDGzej2zvT3A82291hhxmh0art3Qgng4uCc
         qAk5ulOFTOaaJVnFxGAXuu6NfCTLwzFDW+YDg66pxERNrc9jHyBgyYk3IXZEVdMoPDFq
         9D2Fh3KPaBXM/kKg06YRuOWt69m0Kj9QS4mqNrOCJKVUVCSfIA+MGqXHAHrT+3faqxcK
         NJuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=K4fi3Z6R;
       spf=pass (google.com: domain of asimajamestessy@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=asimajamestessy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com. [2a00:1450:4864:20::536])
        by gmr-mx.google.com with ESMTPS id fc11-20020a05600c524b00b003c9a5e8adc5si59880wmb.1.2022.11.02.02.53.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 02:53:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of asimajamestessy@gmail.com designates 2a00:1450:4864:20::536 as permitted sender) client-ip=2a00:1450:4864:20::536;
Received: by mail-ed1-x536.google.com with SMTP id z18so20586385edb.9
        for <clang-built-linux@googlegroups.com>; Wed, 02 Nov 2022 02:53:44 -0700 (PDT)
X-Received: by 2002:a05:6402:4150:b0:44a:ec16:def4 with SMTP id
 x16-20020a056402415000b0044aec16def4mr24049296eda.21.1667382823881; Wed, 02
 Nov 2022 02:53:43 -0700 (PDT)
MIME-Version: 1.0
From: "Mrs. Johanna Maaly Bob" <johannamaalybob01@gmail.com>
Date: Wed, 2 Nov 2022 09:53:29 +0000
Message-ID: <CAGhye-B5=4SZute4QzR3K=eDa=sc7f90Sqr8AtzzPOA5Ot-0VQ@mail.gmail.com>
Subject: Hello Dear,
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000ec0ffa05ec79d03e"
X-Original-Sender: johannamaalybob01@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=K4fi3Z6R;       spf=pass
 (google.com: domain of asimajamestessy@gmail.com designates
 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=asimajamestessy@gmail.com;
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

--000000000000ec0ffa05ec79d03e
Content-Type: text/plain; charset="UTF-8"

Hello Dear, I was wondering if you received my email a couple of Days ago?
I would like to have a personal discussion with you. Please give me a quick
reply.
Yours sincerely,
Mrs. Johanna Maaly Bob,

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGhye-B5%3D4SZute4QzR3K%3DeDa%3Dsc7f90Sqr8AtzzPOA5Ot-0VQ%40mail.gmail.com.

--000000000000ec0ffa05ec79d03e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Dear, I was wondering if you received my email a cou=
ple of Days ago?=C2=A0 I would like to have a personal discussion with you.=
 Please give me a quick reply.<br>Yours sincerely,<br>Mrs. Johanna Maaly Bo=
b,<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAGhye-B5%3D4SZute4QzR3K%3DeDa%3Dsc7f90Sqr8Atz=
zPOA5Ot-0VQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CAGhye-B5%3D4SZute4QzR3K%3DeD=
a%3Dsc7f90Sqr8AtzzPOA5Ot-0VQ%40mail.gmail.com</a>.<br />

--000000000000ec0ffa05ec79d03e--
