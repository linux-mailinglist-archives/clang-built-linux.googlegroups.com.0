Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUWWQGEAMGQE4OPURMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6FF3D7F2C
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:23:46 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id y19-20020a0565120453b029032696702876sf6120911lfk.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:23:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627417426; cv=pass;
        d=google.com; s=arc-20160816;
        b=EPr41R0PrRT0kge+kp4QFp4wlMuGBUxWbGYELvFjkMP7fVAH715yhlIaqtV4flNv4r
         7rm3iDV1pNFq1/gITTu3d4erjh21cu1AAJd0wQAQNwaVqZBdPnH1FO726GTfl2FJogBS
         LjG+FbR+7RnK7xiK/rp30k6cjFo7YGzLs1WXAXfBmsSL4S6eAx5Cq46Ra1jjLnK/95N3
         FU2IKcctRHKIlUOb/F7YZoPIgvdSelarckPLh47nJmXdAY0iIktMiYO5UgSHbrp0S4Ms
         RsSbndxpMiqqky4/NGzakYwJujSYkpbe6HHFi9g4WrFPVhNO7Xt+iVHM6xVjUEECfeQr
         qEuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=Z03ZofeH5WT4JNOettpZ5d7E4j+wro3jfyEj/z8cB24=;
        b=dSTWup5ArnJ6yG//u3FolnkWMUzB3NFsaEJBrqXanCF3fDkyxuTPVZMvbpRuZLwJ13
         qBUoYM4UCEVW8QD7LPLE24ol8YHYZzu1Qv1FRZw3VZwJnNRXgfq5Q28hyvu56UMPKTzG
         49rJxWUCpgtFcnMvPqEhpzI0PIF+SUykBLeFX6FEyBETzBHOJRqh+zZ8Wr3qKr0CQUf4
         Mv3yihDyujK16cianIjECNcmJW5h6ZgvRDw6lGRa79w31zlTpcuGd8/XjbNZFKGkBLZW
         amK/B8VxjP89pRsu0qJe6Fopo4ry5T8htrC7F/zLf/vvNeyimNaMG4SivHKt2i4NFvOo
         llqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XeBMVpB7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z03ZofeH5WT4JNOettpZ5d7E4j+wro3jfyEj/z8cB24=;
        b=qRxv2T44/9I7aYjuXO8zApTP5LNliAe9sElMHl9Q4xo70eUXF6WF62WrgZaMsmSiFN
         aGCecRwN6pWw0DLb71sk46a8KtFHFs6lpVMJbm4PV0tn7O0KcqIpMm/NC0qDo8H0EuAn
         MT7+pUpCVC2odzEx7JpENl16R/ubotDB18c80HKPO5HlrqojeBojC+hAQeFpuys0zkAx
         Q67lnFe6qaE9+4FmKOKOoF0zeV3+ATmnwkCAYZ/4qbbOYn7QBRO7wPOu7IMiCtaV6nFu
         WYxJltJJitgBUuMOs9yy7r3ZxHdDOp5NhXuiVH1Rdh97gKkV7Z++uUClAFEVjYuPou24
         eing==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z03ZofeH5WT4JNOettpZ5d7E4j+wro3jfyEj/z8cB24=;
        b=MX2m84un8SV7oqtTFZMkLCvOgI1AW3KiJriGf2Rji/wuokZ6ySJaVBRp0qrbYEanLC
         O7WcMH2yhRw6LBcKAuHuh2nAQ7ATFfiOL8YNsRy7C2mhRKuWBpcvews4N95z051fvqlZ
         P3qZpwn33KgfpXL84wz5HF/aBs48xXrCxQtJW3WxVtkqUVoNNH/0VCI1+JPOtP05QbRG
         vjMyvb6Qc9TlvnxLSc1rw6eHY6Wgs5Z9FqmRatcgnm2GnqaaANjfJO+UDfn9tScij89G
         Snfy3juWD197tcmFwhbCC223hJw7h2Nqdl5TG2D1u/ygTilWm7ASgSKIWztRG7GGAfXY
         BoRQ==
X-Gm-Message-State: AOAM531FRHo3Pl0Y10GmPcvIStNifNlHXOpPAg96pwW8TBtKpHvu74OW
	uk1tTeZTpkubjtMbBZ/AyLM=
X-Google-Smtp-Source: ABdhPJwx68tZpMcuN838yP70em/ta9KNpIvH/8I3RhsdUMt1L9Xs+LtPhnYw5fjLyCl3/oHtwcrEBw==
X-Received: by 2002:a05:651c:211b:: with SMTP id a27mr16727839ljq.191.1627417426259;
        Tue, 27 Jul 2021 13:23:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:36c2:: with SMTP id e2ls1163175lfs.3.gmail; Tue, 27
 Jul 2021 13:23:45 -0700 (PDT)
X-Received: by 2002:ac2:428a:: with SMTP id m10mr18395082lfh.636.1627417425456;
        Tue, 27 Jul 2021 13:23:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627417425; cv=none;
        d=google.com; s=arc-20160816;
        b=SUvNC2TF9MaZsL4xwS5yKYOjISThi9jh+H9t3RPnCJrYT5Irfy6DEgesOeLqiS/KfX
         Cw9GpNY7UfpdpZiLjETOl3v8QldxYlqjy1xh2CfWoLyV7WaFyLyE8h5jrtVAaZKqIc0o
         ifN1UaSqQpsTCbgOPxtYSiNrM0pt0cD+fp2SB8xSA7AWnt7Xhd5njrQYcSVMdIEHh0EK
         Ner9h+jz4V6wlgkPHtiE8G9sRFc4aF17XiPMbFhMFEdZwi3FWgDIfB24+riRK8BdUGc8
         huR9NA9uCViQJlwod2gLp39mDkgAadzDANZO8zk9+tQsXFMlQeLoljGs5vt7Bk4UCZ/g
         B6Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=vOuayxGglcPPbZ7ihFaornZMZaueMqgynwCCUYhJaFI=;
        b=Y8OYA6ssqwRdQkhpm67wMTiVSRcIuRhL3NX340tyd1II1TPsWNZrPfAaDfZZG2PXw9
         G+AIcKv0F9mwEkm0VxILohKs92XEhp6TDx4JgGPV6iX9qlMhPLvHqoOGou04plMZxm//
         3WFJrJnx4rssL+ev31IjQwjXhz5mEx1zNR9j/H0e9ELFO/97SwoSZNNobFr6/+sNtySL
         qHXiuTaN1yUOXmBRSBzAsDHeVhlPvOUkII3W37lqdOcbYUwQdGNjQgCX7qy5I06yc+on
         MQ6Bpc0pCdJjZzhu9OdWkxu4HTaGkttyPBVkTj0G0Qw37JMSLhi6YtW3nw7AkUJUj+or
         lM1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XeBMVpB7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id v1si158048lfg.13.2021.07.27.13.23.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:23:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id bp1so23976341lfb.3
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:23:45 -0700 (PDT)
X-Received: by 2002:a05:6512:3296:: with SMTP id p22mr17504890lfe.543.1627417424757;
 Tue, 27 Jul 2021 13:23:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAH7mPvhouTHnAhApVrVVbDj2R-fQ1WquhGb8rR96gn5Hn39aUA@mail.gmail.com>
In-Reply-To: <CAH7mPvhouTHnAhApVrVVbDj2R-fQ1WquhGb8rR96gn5Hn39aUA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 13:23:33 -0700
Message-ID: <CAKwvOdnKr4MJ_ar_-POmWPjzOpB9OwfyfgHrOKzTuq7cJrEYPA@mail.gmail.com>
Subject: Fwd: Squeezing More Performance Out Of The Linux Kernel With Clang +
 LTO - Phoronix
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XeBMVpB7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e
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

---------- Forwarded message ---------
From: Nick Desaulniers <nick.desaulniers@gmail.com>
Date: Wed, Jul 21, 2021 at 9:37 PM
Subject: Squeezing More Performance Out Of The Linux Kernel With Clang
+ LTO - Phoronix
To: Nick Desaulniers <nnn@google.com>


https://www.phoronix.com/scan.php?page=article&item=clang-lto-kernel&num=3


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnKr4MJ_ar_-POmWPjzOpB9OwfyfgHrOKzTuq7cJrEYPA%40mail.gmail.com.
