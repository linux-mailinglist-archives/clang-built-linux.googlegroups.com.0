Return-Path: <clang-built-linux+bncBCU73AEHRQBBBNEWS6BQMGQE2ARXMLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D3B351531
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 15:31:33 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id h13sf947874uaj.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 06:31:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617283892; cv=pass;
        d=google.com; s=arc-20160816;
        b=iU1gX3I5oVh9LbNwmihN9H5BtbaiJMdfG121vL01uSj4iDqm/qE+1OpTkK0O6kssxd
         HTp8z6aKnWHjtd/2N4TkPkZu3eS9ZZL7KuAF1dBOfn08Q/T8GrV4k9CqgYf8nFilc8xu
         k8bclCxWGpd2WqFnu0vjry1e/sNbVLZ10Lf3sA5Q9mqHBrY3RKVJmLkwAC3wD6p8/9iU
         yAIUDwSQZjraUQm5rVmObHHm2tOqNRRiL6gFJRomsLjaOoSg7StKwsLGKv6Bf8ubuFre
         IeLrG0Z/YGrCr5xDg6x688n28HFUzyjvYOYhBJQnX9+V7ZqrIBOFAkYEjck9lrXZT7eW
         Auww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Z1ZnCiQJWAAVtAxzqud2tCFIwFToud623NivuItf0EA=;
        b=ihCyQ4bkpFM8MF7vnp/rzZdwD9l7QlB48UC/fEhcFEn56VJAtOs6GD0+mDXO8Wbv46
         8673dl8Dex0YDS2ke35FNaAkKB4aCAHGbRB77OFIqvFAwXND0N6cReJb99NcxHRYQKTS
         raXWS9Mxsd+6d7n/1qafnGhITikA5U8n0ULL9AhWY3l0F3Dq9ROk+daJW+MMkzBPuN38
         Bt/+qmAiVm1dAtzIAJsVqeuP0HR+8EjFC7lATWK0kFsX5kH6tuYIM+bQZXDymnzG8pAC
         h4cYWNKffoo/7FKHlrHQlx5tfGAIINSMOq6UMBitMu3dNtDjxzPwu2ODtTFotxsOzzd0
         uCiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=xjdx=i6=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=xJdX=I6=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z1ZnCiQJWAAVtAxzqud2tCFIwFToud623NivuItf0EA=;
        b=e57fHUMtbNRPEyeUjMe84Y9D5iVjLgLl0dWVhqUnIw6WwvrcPngMuvou9TWKIstjYQ
         +USdQRhoEHXGTh9VAaCwBfvHV2RbASAhux4wYOA3czL5hI/yUB7HgOigUPl7xwpYnyzz
         akCeMl5PP+bNYRSjwzoffrGm8xRfdYFwJkPOZJwv9xzhPsRXuLUQ9AklQi/RcQKx4qLC
         zKLzOtuxA6eERLEroq4kEOL4M2rq9ARORrGBFdK7eQQPAmIeDRPKCfoneBP6WdZ0J5Kz
         OYtTb2rhfYk/37/YyhKSxpE6mYa9ZC+GJDtP0G4NNWrW81Mjvav/dBCjYYkp79tv5TTg
         Dfyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z1ZnCiQJWAAVtAxzqud2tCFIwFToud623NivuItf0EA=;
        b=CXMb78EpINeIQbd6N5r7iHULUdDQj/kR+9C2Q8/IL3C02WY55KVIeydCE2CqTs21yT
         EUTG3l2sJC8eZ9pWWlP84hzkAXzmXntT4AdxZqTUyLjBkueEHVgmfWGRDWV0JmnkgA2U
         26zwUqa43d1aKO8vsL9P3xBL6VhPYsiJeuBMlQIbwvRk+MgwS95vanxvhHTf6ou8j/GE
         xtuB9GyCYLqtMQ8IdcUtfEIywyo2sNni9+1D030G+7Z0llwt1y4fiUTMHWA2NTjY98Vl
         nSsath7xyyEPZl9H1FUHmqQi5cgwmO/ny4ws503Szk2nKya73K8/pKZiSbpb1jy9hSb+
         HG/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+vzfo9bd1KzyRoPwazuirQRpXxTIwIyC9UnhzGbpTspmw+OaK
	zPs8BkCtcDJAuhBSx36VbMU=
X-Google-Smtp-Source: ABdhPJzuTVIHBE2cjkOjbNKnEHoijjVy+8Gp7EevoRLpvYKS9GgfC8rGD40yOjrruX7i8JSO2Kklhw==
X-Received: by 2002:a1f:53c7:: with SMTP id h190mr5218783vkb.19.1617283892429;
        Thu, 01 Apr 2021 06:31:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:eb50:: with SMTP id x16ls710997vso.4.gmail; Thu, 01 Apr
 2021 06:31:31 -0700 (PDT)
X-Received: by 2002:a67:d905:: with SMTP id t5mr5037544vsj.43.1617283891824;
        Thu, 01 Apr 2021 06:31:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617283891; cv=none;
        d=google.com; s=arc-20160816;
        b=RSnJdEb96vidibsiEDhLhYfZEsLzYTF9Oh6JpwQVqnSgmJN4gnnRPOYnueHHkSnrkq
         J4XuV5hx+8kaCs3/mgXkornpQ8+wscX1qOEnnfivKk7Pqy9DB62urojkv3UttibXt6il
         i1s1R92Qg/fYnB5mAYGSFVv2NRVPQLZHu5TCx2TJGeRqGyVsTH/iCe7Q6nFnZfy0rrRC
         S27fcqELbKDSQXa5N1KyAr+84TU9y6/jk4lyrSW1Zdw2qlWn/COn3HSw84PE1tgd8LJV
         3h1CEQWKuTMD4KcbfNUl/NdFPWSQ0/WyqM3fG0ND05gdxOgmXzfQloKz4AoERHPXozZh
         vXmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=C+wpHcKyOXNKUY7Y5qjie5ySOPMNle6MMvot9j9soh8=;
        b=eQnVUbW/qEH0qQ4KK7pnqFddH8w0wjLN1KWPgEEPMls8iYAVDCfg62ierZ38h7vMrH
         Ngg+K7LQ+Iu1U3VTnHdvMwK9qFV/o10xaGKGjSwolBlU+XVrVEA4TC5M43t/Q+biVbAi
         8IwCXJrSiko6TrF8QGqw63cULprsBditIozwtQcapST4qUHT/odkVysjQ7FmrZSlM+9Q
         WO7+u22a4N4c7n4C+VapdEVDcwALYxm/OhBuj/go92GmCyqj0aHTVo0Duv28G0yGLDZt
         7RE+LS4RQ1inACMxzAi99ReTSCwbcFwqTBB6ocrEWqKF2xMoCDVfbnFTGr+qdVAVnGyO
         e5Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=xjdx=i6=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=xJdX=I6=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u21si269129vkn.2.2021.04.01.06.31.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 06:31:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=xjdx=i6=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 90F3961249;
	Thu,  1 Apr 2021 13:31:29 +0000 (UTC)
Date: Thu, 1 Apr 2021 09:31:27 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Elena Zannoni <elena.zannoni@oracle.com>, "Jose E. Marchesi"
 <jemarch@gnu.org>, linux-toolchains@vger.kernel.org, clang-built-linux
 <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>,
 Florian Weimer <fweimer@redhat.com>, Christian Brauner
 <christian.brauner@canonical.com>, nick.alcock@oracle.com, Segher
 Boessenkool <segher@kernel.crashing.org>
Subject: Re: Plumbers CF MCs
Message-ID: <20210401093127.5a37882f@gandalf.local.home>
In-Reply-To: <20210401092935.43d3ed54@gandalf.local.home>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
	<87o8fa3oua.fsf@gnu.org>
	<403153ed-7953-c42e-40a2-6ad313acd661@oracle.com>
	<CAKwvOd=aCn9WqcZe8KgvvZmW0C0nUVL9+sjE_xh0A-ru-995Hg@mail.gmail.com>
	<20210401092935.43d3ed54@gandalf.local.home>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=xjdx=i6=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=xJdX=I6=goodmis.org=rostedt@kernel.org"
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

On Thu, 1 Apr 2021 09:29:35 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:

> On Wed, 31 Mar 2021 13:36:03 -0700
> Nick Desaulniers <ndesaulniers@google.com> wrote:
> 
> > Steven, sorry if I missed it, but can the conf organizers pick and
> > post a date for the deadline for Call-for-MC submissions? This might  
> 
> You mean for MC topics, not the MC itself.

Should have been a question. But if it is for MC topics, yes, the MC
organizers can choose their own deadlines for submissions. Which can be any
time until up to a week before the conference. All topics should be in by
a week before, and acceptance of those topics at least 3 days before, but
earlier is always better.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401093127.5a37882f%40gandalf.local.home.
